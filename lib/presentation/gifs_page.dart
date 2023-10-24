import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:provider/provider.dart';

import '../application/giphy_view_model.dart';
import '../core/extensions.dart';
import '../core/injection/injection.dart';
import '../domain/gif_object.dart';
import '../domain/giphy_api_repository.dart';
import '../domain/search_results.dart';
import 'widgets/centered_network_image.dart';
import 'widgets/gif_author.dart';
import 'widgets/spacers.dart';

typedef OnSearchFunction = void Function(String query);

class GifsPage extends StatelessWidget {
  const GifsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Giphy browser'),
          backgroundColor: context.theme.colorScheme.inversePrimary,
        ),
        body: ChangeNotifierProvider(
          create: (_) => GiphyViewModel(getIt.get<GiphyApiRepository>()),
          builder: (_, __) => const _GifsBrowser(),
        ),
      ),
    );
  }
}

/*
 A simpler way is
 
 Column(
 children: [
  _GifsHeader(),
  _GridView(),
 ],
 )

 But slivers are more powerful (f.e. see a persistent header)
 and should be used for complex scrolls.
 */
class _GifsBrowser extends StatefulWidget {
  const _GifsBrowser({super.key});

  @override
  State<_GifsBrowser> createState() => _GifsBrowserState();
}

class _GifsBrowserState extends State<_GifsBrowser> {
  final PagingController<int, GifObject> _pagingController = PagingController(
    firstPageKey: 0,
    invisibleItemsThreshold: 4,
  );

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isInitialState = context.select<GiphyViewModel, bool>(
      (m) => m.isInitialState,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: false,
            floating: true,
            delegate: _GifsHeader(
              height: 52,
              onSearch: (query) {
                context.read<GiphyViewModel>().updateQuery(query);
                _pagingController.refresh();
              },
            ),
          ),
          if (isInitialState)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: _Hint()),
            ),
          if (!isInitialState)
            PagedSliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                childAspectRatio: 2 / 3,
              ),
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<GifObject>(
                itemBuilder: (_, item, __) => _GifCard(gifObject: item),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final viewModel = context.read<GiphyViewModel>();
      final SearchResults gifs = await viewModel.searchGifs(offset: pageKey);
      if (viewModel.isLastPage) {
        _pagingController.appendLastPage(gifs.gifObjects);
      } else {
        _pagingController.appendPage(gifs.gifObjects, viewModel.nextOffset);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }
}

class _GifsHeader implements SliverPersistentHeaderDelegate {
  const _GifsHeader({required this.height, required this.onSearch});

  final double height;
  final OnSearchFunction onSearch;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) =>
      Container(
        color: context.theme.colorScheme.background,
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: _GifsSearchBar(onSearch: onSearch),
      );

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(_) => true;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  TickerProvider? get vsync => null;
}

class _GifsSearchBar extends StatefulWidget {
  const _GifsSearchBar({super.key, required this.onSearch});

  final OnSearchFunction onSearch;

  @override
  State<_GifsSearchBar> createState() => _GifsSearchBarState();
}

class _GifsSearchBarState extends State<_GifsSearchBar> {
  final _textController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();

  @override
  void dispose() {
    _textController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type to search',
              hintStyle: context.theme.textTheme.labelSmall?.copyWith(
                height: 1,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            controller: _textController,
            focusNode: _searchFocus,
            onSubmitted: (_) => _startSearch(),
          ),
        ),
        IconButton(
          onPressed: _startSearch,
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  void _startSearch() {
    _searchFocus.unfocus();
    widget.onSearch(_textController.text);
  }
}

/*
There are a lot of packages for localization, f.e. easy_localization
 */
class _Hint extends StatelessWidget {
  const _Hint({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Start typing to search.'),
        sb16,
        Text('HINT: tap an image to open details.')
      ],
    );
  }
}

class _GifCard extends StatelessWidget {
  const _GifCard({super.key, required this.gifObject});

  final GifObject gifObject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // It's enough for our goals.
      // In big apps with complex navigation Navigator 2.0 should be used
      // or packages like auto_route or go_router
      onTap: () => Navigator.of(context).pushNamed(
        '/details',
        arguments: gifObject,
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Column(
          children: [
            Expanded(
              child: CenteredNetworkImage(imageUrl: gifObject.thumbnail.url),
            ),
            Text(
              gifObject.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.bodyMedium,
            ),
            GifAuthor(authorName: gifObject.userName),
          ],
        ),
      ),
    );
  }
}
