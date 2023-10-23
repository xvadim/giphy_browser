// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagesDto _$ImagesDtoFromJson(Map<String, dynamic> json) {
  return _ImagesDto.fromJson(json);
}

/// @nodoc
mixin _$ImagesDto {
  ImageDto get original => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_width')
  ImageDto get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesDtoCopyWith<ImagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesDtoCopyWith<$Res> {
  factory $ImagesDtoCopyWith(ImagesDto value, $Res Function(ImagesDto) then) =
      _$ImagesDtoCopyWithImpl<$Res, ImagesDto>;
  @useResult
  $Res call(
      {ImageDto original, @JsonKey(name: 'fixed_width') ImageDto thumbnail});

  $ImageDtoCopyWith<$Res> get original;
  $ImageDtoCopyWith<$Res> get thumbnail;
}

/// @nodoc
class _$ImagesDtoCopyWithImpl<$Res, $Val extends ImagesDto>
    implements $ImagesDtoCopyWith<$Res> {
  _$ImagesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as ImageDto,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDtoCopyWith<$Res> get original {
    return $ImageDtoCopyWith<$Res>(_value.original, (value) {
      return _then(_value.copyWith(original: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDtoCopyWith<$Res> get thumbnail {
    return $ImageDtoCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImagesDtoImplCopyWith<$Res>
    implements $ImagesDtoCopyWith<$Res> {
  factory _$$ImagesDtoImplCopyWith(
          _$ImagesDtoImpl value, $Res Function(_$ImagesDtoImpl) then) =
      __$$ImagesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ImageDto original, @JsonKey(name: 'fixed_width') ImageDto thumbnail});

  @override
  $ImageDtoCopyWith<$Res> get original;
  @override
  $ImageDtoCopyWith<$Res> get thumbnail;
}

/// @nodoc
class __$$ImagesDtoImplCopyWithImpl<$Res>
    extends _$ImagesDtoCopyWithImpl<$Res, _$ImagesDtoImpl>
    implements _$$ImagesDtoImplCopyWith<$Res> {
  __$$ImagesDtoImplCopyWithImpl(
      _$ImagesDtoImpl _value, $Res Function(_$ImagesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? thumbnail = null,
  }) {
    return _then(_$ImagesDtoImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as ImageDto,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ImageDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesDtoImpl implements _ImagesDto {
  const _$ImagesDtoImpl(
      {required this.original,
      @JsonKey(name: 'fixed_width') required this.thumbnail});

  factory _$ImagesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesDtoImplFromJson(json);

  @override
  final ImageDto original;
  @override
  @JsonKey(name: 'fixed_width')
  final ImageDto thumbnail;

  @override
  String toString() {
    return 'ImagesDto(original: $original, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesDtoImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesDtoImplCopyWith<_$ImagesDtoImpl> get copyWith =>
      __$$ImagesDtoImplCopyWithImpl<_$ImagesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesDtoImplToJson(
      this,
    );
  }
}

abstract class _ImagesDto implements ImagesDto {
  const factory _ImagesDto(
          {required final ImageDto original,
          @JsonKey(name: 'fixed_width') required final ImageDto thumbnail}) =
      _$ImagesDtoImpl;

  factory _ImagesDto.fromJson(Map<String, dynamic> json) =
      _$ImagesDtoImpl.fromJson;

  @override
  ImageDto get original;
  @override
  @JsonKey(name: 'fixed_width')
  ImageDto get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ImagesDtoImplCopyWith<_$ImagesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
