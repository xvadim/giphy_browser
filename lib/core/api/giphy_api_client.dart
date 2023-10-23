import '../../infrastructure/dto/search_results_dto.dart';

abstract interface class GiphyApiClient {
  Future<SearchResultsDto> searchGifs({
    required String query,
    required int offset,
    required int limit,
  });
}
