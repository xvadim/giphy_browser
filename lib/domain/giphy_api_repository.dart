import 'search_results.dart';

abstract interface class GiphyApiRepository {
  Future<SearchResults> searchGifs({
    required String query,
    required int offset,
    required int limit,
  });
}
