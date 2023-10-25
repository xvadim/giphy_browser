import 'package:flutter_test/flutter_test.dart';
import 'package:giphy_browser/domain/search_results.dart';
import 'package:giphy_browser/infrastructure/api/giphy_api_client_impl.dart';
import 'package:giphy_browser/infrastructure/api/retrofit_client.dart';
import 'package:giphy_browser/infrastructure/dto/search_results_dto.dart';
import 'package:giphy_browser/infrastructure/giphy_api_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

import 'fixtures_reader.dart';

class MockRetrofitClient extends Mock implements RetrofitClient {}

void main() {
  final searchResultJson = SearchResultsDto.fromJson(
    'mocked_response.json'.toFixture(),
  );

  late GiphyApiRepositoryImpl repository;
  late GiphyApiClientImpl apiClient;
  late RetrofitClient retrofitClient;

  setUp(() async {
    registerFallbackValue(Uri());

    retrofitClient = MockRetrofitClient();
    apiClient = GiphyApiClientImpl(retrofitClient);
    repository = GiphyApiRepositoryImpl(apiClient);
  });

  test('Repository test', () async {
    when(() => retrofitClient.searchGifs(any(), any(), any(), any()))
        .thenAnswer((_) async => searchResultJson);

    final SearchResults searchResult = await repository.searchGifs(
      query: 'flutter',
      offset: 0,
      limit: 2,
    );

    verify(() => retrofitClient.searchGifs('flutter', 0, 2, any()));
    verifyNoMoreInteractions(retrofitClient);

    expect(searchResult.count, 2);
    expect(searchResult.gifObjects.length, 2);
    expect(searchResult.gifObjects.first.title, 'Bored Cat GIF');
  });
}
