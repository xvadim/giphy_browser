// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gif_object_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GifObjectDto _$GifObjectDtoFromJson(Map<String, dynamic> json) {
  return _GifObjectDto.fromJson(json);
}

/// @nodoc
mixin _$GifObjectDto {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get userName => throw _privateConstructorUsedError;
  ImagesDto get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GifObjectDtoCopyWith<GifObjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifObjectDtoCopyWith<$Res> {
  factory $GifObjectDtoCopyWith(
          GifObjectDto value, $Res Function(GifObjectDto) then) =
      _$GifObjectDtoCopyWithImpl<$Res, GifObjectDto>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'username') String? userName,
      ImagesDto images});

  $ImagesDtoCopyWith<$Res> get images;
}

/// @nodoc
class _$GifObjectDtoCopyWithImpl<$Res, $Val extends GifObjectDto>
    implements $GifObjectDtoCopyWith<$Res> {
  _$GifObjectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userName = freezed,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImagesDtoCopyWith<$Res> get images {
    return $ImagesDtoCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GifObjectDtoImplCopyWith<$Res>
    implements $GifObjectDtoCopyWith<$Res> {
  factory _$$GifObjectDtoImplCopyWith(
          _$GifObjectDtoImpl value, $Res Function(_$GifObjectDtoImpl) then) =
      __$$GifObjectDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'username') String? userName,
      ImagesDto images});

  @override
  $ImagesDtoCopyWith<$Res> get images;
}

/// @nodoc
class __$$GifObjectDtoImplCopyWithImpl<$Res>
    extends _$GifObjectDtoCopyWithImpl<$Res, _$GifObjectDtoImpl>
    implements _$$GifObjectDtoImplCopyWith<$Res> {
  __$$GifObjectDtoImplCopyWithImpl(
      _$GifObjectDtoImpl _value, $Res Function(_$GifObjectDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userName = freezed,
    Object? images = null,
  }) {
    return _then(_$GifObjectDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as ImagesDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GifObjectDtoImpl implements _GifObjectDto {
  const _$GifObjectDtoImpl(
      {required this.title,
      @JsonKey(name: 'username') this.userName,
      required this.images});

  factory _$GifObjectDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GifObjectDtoImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'username')
  final String? userName;
  @override
  final ImagesDto images;

  @override
  String toString() {
    return 'GifObjectDto(title: $title, userName: $userName, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GifObjectDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, userName, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GifObjectDtoImplCopyWith<_$GifObjectDtoImpl> get copyWith =>
      __$$GifObjectDtoImplCopyWithImpl<_$GifObjectDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GifObjectDtoImplToJson(
      this,
    );
  }
}

abstract class _GifObjectDto implements GifObjectDto {
  const factory _GifObjectDto(
      {required final String title,
      @JsonKey(name: 'username') final String? userName,
      required final ImagesDto images}) = _$GifObjectDtoImpl;

  factory _GifObjectDto.fromJson(Map<String, dynamic> json) =
      _$GifObjectDtoImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'username')
  String? get userName;
  @override
  ImagesDto get images;
  @override
  @JsonKey(ignore: true)
  _$$GifObjectDtoImplCopyWith<_$GifObjectDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
