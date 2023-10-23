import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:provider/provider.dart';

import '../application/giphy_view_model.dart';
import '../core/extensions.dart';
import '../core/injection/injection.dart';
import '../domain/gif_object.dart';
import '../domain/giphy_api_repository.dart';
import '../domain/search_results.dart';
import 'widgets/centered_network_image.dart';
import 'widgets/gif_author.dart';

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
class _GifsBrowser extends StatelessWidget {
  const _GifsBrowser({super.key});

  @override
  Widget build(BuildContext context) {
    final gifs = context.select<GiphyViewModel, SearchResults?>((m) => m.gifs);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: false,
            floating: true,
            delegate: _GifsHeader(
              height: 52,
              onSearch: (query) => context.read<GiphyViewModel>().searchGifs(
                    query: query,
                    offset: 0,
                  ),
            ),
          ),
          if (gifs != null)
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                childAspectRatio: 190 / 320,
              ),
              itemBuilder: (context, index) => _GifCard(
                gifObject: gifs.gifObjects[index],
              ),
              itemCount: gifs.count,
            ),
        ],
      ),
    );
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
