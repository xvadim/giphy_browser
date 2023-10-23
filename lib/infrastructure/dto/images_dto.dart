import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_dto.dart';

part 'images_dto.freezed.dart';
part 'images_dto.g.dart';

@freezed
class ImagesDto with _$ImagesDto {
  const factory ImagesDto({
    required ImageDto original,
    @JsonKey(name: 'fixed_width') required ImageDto thumbnail,
  }) = _ImagesDto;

  factory ImagesDto.fromJson(Map<String, dynamic> json) =>
      _$ImagesDtoFromJson(json);
}
