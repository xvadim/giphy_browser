import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/gif_object.dart';
import 'image_dto.dart';
import 'images_dto.dart';

part 'gif_object_dto.freezed.dart';
part 'gif_object_dto.g.dart';

@freezed
class GifObjectDto with _$GifObjectDto {
  const factory GifObjectDto({
    required String title,
    @JsonKey(name: 'username') String? userName,
    required ImagesDto images,
  }) = _GifObjectDto;

  factory GifObjectDto.fromJson(Map<String, dynamic> json) =>
      _$GifObjectDtoFromJson(json);
}

extension GifObjectDtoEx on GifObjectDto {
  GifObject toModel() => GifObject(
        title: title,
        userName: userName,
        originalImage: images.original.toModel(),
        thumbnail: images.thumbnail.toModel(),
      );
}
