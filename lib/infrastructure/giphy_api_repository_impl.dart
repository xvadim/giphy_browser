import 'package:injectable/injectable.dart';

import '../core/api/giphy_api_client.dart';
import '../domain/giphy_api_repository.dart';
import '../domain/search_results.dart';
import 'dto/search_results_dto.dart';

@Injectable(as: GiphyApiRepository)
class GiphyApiRepositoryImpl implements GiphyApiRepository {
  GiphyApiRepositoryImpl(this._apiClient);

  @override
  Future<SearchResults> searchGifs({
    required String query,
    required int offset,
    required int limit,
  }) async {
    final resultDto = await _apiClient.searchGifs(
      query: query,
      offset: offset,
      limit: limit,
    );
    return resultDto.toModel();
  }

  final GiphyApiClient _apiClient;
}
