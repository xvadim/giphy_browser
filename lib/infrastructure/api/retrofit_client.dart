import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/search_results_dto.dart';

part 'retrofit_client.g.dart';

@lazySingleton
@RestApi()
abstract class RetrofitClient {
  @factoryMethod
  factory RetrofitClient(Dio dio) = _RetrofitClient;

  @GET('/search')
  Future<SearchResultsDto> searchGifs(
    @Query('q') String query,
    @Query('offset') int offset,
    @Query('limit') int limit, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
