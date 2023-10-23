import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/gif_image.dart';

part 'image_dto.freezed.dart';
part 'image_dto.g.dart';

@freezed
class ImageDto with _$ImageDto {
  const factory ImageDto({
    required String url,
    required String height,
    required String width,
    required String size,
  }) = _ImageDto;

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);
}

extension ImageDtoEx on ImageDto {
  // Here we can perform converting DTO -> Model
  // when json_serialization is not enough
  GifImage toModel() => GifImage(
        url: url,
        height: height,
        width: width,
        size: size,
      );
}
