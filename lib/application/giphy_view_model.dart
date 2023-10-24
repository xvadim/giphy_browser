import 'package:flutter/material.dart';

import '../domain/giphy_api_repository.dart';
import '../domain/search_results.dart';

class GiphyViewModel extends ChangeNotifier {
  GiphyViewModel(this._repository);

  Future<SearchResults> searchGifs({
    required int offset,
  }) async {
    final SearchResults results = await _repository.searchGifs(
      query: _query ?? '',
      offset: offset,
      limit: _pageLimit,
    );
    _gifs = results;
    return results;
  }

  bool get isInitialState => _query == null;
  bool get isLastPage => (_gifs?.count ?? 0) < _pageLimit;
  int get nextOffset => (_gifs?.offset ?? 0) + (_gifs?.count ?? 0);

  void updateQuery(String query) {
    _query = query;
    notifyListeners();
  }

  String? _query;
  SearchResults? _gifs;

  final GiphyApiRepository _repository;
  static const _pageLimit = 16;
}
