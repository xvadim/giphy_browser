import 'package:injectable/injectable.dart';

import '../../core/api/giphy_api_client.dart';
import '../dto/search_results_dto.dart';
import 'retrofit_client.dart';

@Singleton(as: GiphyApiClient)
class GiphyApiClientImpl implements GiphyApiClient {
  GiphyApiClientImpl(this._retrofitClient);

  @override
  Future<SearchResultsDto> searchGifs({
    required String query,
    required int offset,
    required int limit,
  }) {
    return _retrofitClient.searchGifs(query, offset, limit);
  }

  final RetrofitClient _retrofitClient;
}
