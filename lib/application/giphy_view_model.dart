import 'package:flutter/material.dart';

import '../domain/giphy_api_repository.dart';
import '../domain/search_results.dart';

class GiphyViewModel extends ChangeNotifier {
  GiphyViewModel(this._repository);

  Future<void> searchGifs({
    required String query,
    required int offset,
  }) async {
    final SearchResults results = await _repository.searchGifs(
      query: query,
      offset: offset,
      limit: _pageLimit,
    );
    gifs = results;
    notifyListeners();
  }

  SearchResults? gifs;

  final GiphyApiRepository _repository;
  static const _pageLimit = 16;
}
