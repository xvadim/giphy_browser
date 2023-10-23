import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/search_results.dart';
import 'gif_object_dto.dart';
import 'pagination_dto.dart';

part 'search_results_dto.freezed.dart';
part 'search_results_dto.g.dart';

@freezed
class SearchResultsDto with _$SearchResultsDto {
  const factory SearchResultsDto({
    @JsonKey(name: 'data') required List<GifObjectDto> objects,
    required PaginationDto pagination,
  }) = _SearchResultsDto;

  factory SearchResultsDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsDtoFromJson(json);
}

extension SearchResultsDtoEx on SearchResultsDto {
  // Convert a DTO object to more suitable Model object
  SearchResults toModel() => SearchResults(
        total: pagination.totalCount,
        offset: pagination.offset,
        count: pagination.count,
        gifObjects: objects.map((obj) => obj.toModel()).toList(),
      );
}
