// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return _ImageDto.fromJson(json);
}

/// @nodoc
mixin _$ImageDto {
  String get url => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  String get width => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDtoCopyWith<ImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDtoCopyWith<$Res> {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) then) =
      _$ImageDtoCopyWithImpl<$Res, ImageDto>;
  @useResult
  $Res call({String url, String height, String width, String size});
}

/// @nodoc
class _$ImageDtoCopyWithImpl<$Res, $Val extends ImageDto>
    implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDtoImplCopyWith<$Res>
    implements $ImageDtoCopyWith<$Res> {
  factory _$$ImageDtoImplCopyWith(
          _$ImageDtoImpl value, $Res Function(_$ImageDtoImpl) then) =
      __$$ImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String height, String width, String size});
}

/// @nodoc
class __$$ImageDtoImplCopyWithImpl<$Res>
    extends _$ImageDtoCopyWithImpl<$Res, _$ImageDtoImpl>
    implements _$$ImageDtoImplCopyWith<$Res> {
  __$$ImageDtoImplCopyWithImpl(
      _$ImageDtoImpl _value, $Res Function(_$ImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
    Object? size = null,
  }) {
    return _then(_$ImageDtoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDtoImpl implements _ImageDto {
  const _$ImageDtoImpl(
      {required this.url,
      required this.height,
      required this.width,
      required this.size});

  factory _$ImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDtoImplFromJson(json);

  @override
  final String url;
  @override
  final String height;
  @override
  final String width;
  @override
  final String size;

  @override
  String toString() {
    return 'ImageDto(url: $url, height: $height, width: $width, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDtoImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      __$$ImageDtoImplCopyWithImpl<_$ImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDtoImplToJson(
      this,
    );
  }
}

abstract class _ImageDto implements ImageDto {
  const factory _ImageDto(
      {required final String url,
      required final String height,
      required final String width,
      required final String size}) = _$ImageDtoImpl;

  factory _ImageDto.fromJson(Map<String, dynamic> json) =
      _$ImageDtoImpl.fromJson;

  @override
  String get url;
  @override
  String get height;
  @override
  String get width;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$ImageDtoImplCopyWith<_$ImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
