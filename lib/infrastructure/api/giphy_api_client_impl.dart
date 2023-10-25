import 'package:dio/dio.dart';
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
  }) =>
      _doRequest(
        () async {
          _cancelToken?.cancel();
          _cancelToken = CancelToken();
          final result = await _retrofitClient.searchGifs(
            query,
            offset,
            limit,
            _cancelToken,
          );
          _cancelToken = null;
          return result;
        },
      );

  // Here we can log and process any errors and convert its to more
  // suitable data structures.
  // F.e. we can process any exceptions on the data layer and pass to the
  // higher layers Either from the fpdart package
  Future<T> _doRequest<T>(Future<T> Function() execute) async {
    try {
      return await execute();
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        // Parse the 'Bad response' error
        throw Exception('Bad response');
      } else {
        throw Exception('Common network error');
      }
    } catch (e) {
      throw Exception('Unexpected error');
    }
  }

  final RetrofitClient _retrofitClient;
  CancelToken? _cancelToken;
}
