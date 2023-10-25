import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giphy_browser/core/injection/injection.dart';
import 'package:giphy_browser/domain/search_results.dart';
import 'package:giphy_browser/infrastructure/dto/search_results_dto.dart';

import 'package:giphy_browser/main.dart';
import 'package:giphy_browser/presentation/widgets/gif_card.dart';

import 'fixtures_reader.dart';

void main() {
  testWidgets('Initial state test', (WidgetTester tester) async {
    configureInjection();

    await tester.pumpWidget(const GiphyBrowserApp());
    expect(find.text('Start typing to search.'), findsOneWidget);

    expect(find.text(' 0/0 images'), findsOneWidget);
  });

  testWidgets('GifCard test', (WidgetTester tester) async {
    final searchResultDto = SearchResultsDto.fromJson(
      'mocked_response.json'.toFixture(),
    );
    final SearchResults searchResult = searchResultDto.toModel();

    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: GifCard(gifObject: searchResult.gifObjects.first),
        ),
      ),
    );

    expect(find.text('Bored Cat GIF'), findsOneWidget);
  });
}
