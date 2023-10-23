import 'package:freezed_annotation/freezed_annotation.dart';

part 'gif_image.freezed.dart';

@freezed
class GifImage with _$GifImage {
  const factory GifImage({
    required String url,
    required String height,
    required String width,
    required String size,
  }) = _GifImage;
}
