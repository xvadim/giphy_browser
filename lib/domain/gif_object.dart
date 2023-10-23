import 'package:freezed_annotation/freezed_annotation.dart';

import 'gif_image.dart';

part 'gif_object.freezed.dart';

@freezed
class GifObject with _$GifObject {
  const factory GifObject({
    required String title,
    String? userName,
    required GifImage originalImage,
    required GifImage thumbnail,
  }) = _GifObject;
}
