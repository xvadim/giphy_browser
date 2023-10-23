import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

@freezed
class PaginationDto with _$PaginationDto {
  const factory PaginationDto({
    @JsonKey(name: 'total_count') required int totalCount,
    required int count,
    required int offset,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PaginationDtoFromJson(json);
}
