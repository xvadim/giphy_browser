import 'dart:async';

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
import 'widgets/gif_card.dart';
import 'widgets/live_search_bar.dart';
import 'widgets/spacers.dart';

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
      child: Column(
        children: [
          Expanded(
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      childAspectRatio: 2 / 3,
                    ),
                    pagingController: _pagingController,
                    builderDelegate: PagedChildBuilderDelegate<GifObject>(
                      itemBuilder: (_, item, __) => GifCard(gifObject: item),
                    ),
                  ),
              ],
            ),
          ),
          const _StatsInfo(),
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

// Put all these classes here as they are used only in this page

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
        child: LiveSearchBar(onSearch: onSearch),
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

class _StatsInfo extends StatelessWidget {
  const _StatsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    // Use `select` to avoid unnecessary rebuilds
    final total = context.select<GiphyViewModel, int>((m) => m.totalImages);
    final loaded = context.select<GiphyViewModel, int>((m) => m.loadedImages);
    final query = context.select<GiphyViewModel, String?>((m) => m.query);
    return Center(child: Text('${query ?? ''} $total/$loaded images'));
  }
}
