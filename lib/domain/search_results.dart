import 'package:freezed_annotation/freezed_annotation.dart';

import 'gif_object.dart';

part 'search_results.freezed.dart';

@freezed
class SearchResults with _$SearchResults {
  const factory SearchResults({
    required int total,
    required int offset,
    required int count,
    required List<GifObject> gifObjects,
  }) = _SearchResults;
}
