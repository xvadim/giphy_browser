import 'package:flutter_test/flutter_test.dart';
import 'package:giphy_browser/domain/search_results.dart';
import 'package:giphy_browser/infrastructure/dto/search_results_dto.dart';

import 'fixtures_reader.dart';

void main() {
  test("Test model's creation", () {
    // create an object ...
    final searchResultDto = SearchResultsDto.fromJson(
      'mocked_response.json'.toFixture(),
    );
    final SearchResults searchResult = searchResultDto.toModel();

    // ... and test it's properties
    expect(searchResult.count, 2);
    expect(searchResult.total, 42510);
    expect(searchResult.offset, 0);

    expect(searchResult.gifObjects.length, 2);

    expect(searchResult.gifObjects.first.title, 'Bored Cat GIF');
    expect(
      searchResult.gifObjects.first.originalImage.url,
      'https://media1.giphy.com/media/mlvseq9yvZhba/giphy.gif?cid=85fd0e57e69lic9nxpvn8o8jktc5adhnitjqbv9pmonxhhsp&ep=v1_gifs_search&rid=giphy.gif&ct=g',
    );

    expect(searchResult.gifObjects.last.originalImage.width, '400');
    expect(searchResult.gifObjects.last.thumbnail.width, '200');
  });
}
