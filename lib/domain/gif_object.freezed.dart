// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gif_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GifObject {
  String get title => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  GifImage get originalImage => throw _privateConstructorUsedError;
  GifImage get thumbnail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GifObjectCopyWith<GifObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GifObjectCopyWith<$Res> {
  factory $GifObjectCopyWith(GifObject value, $Res Function(GifObject) then) =
      _$GifObjectCopyWithImpl<$Res, GifObject>;
  @useResult
  $Res call(
      {String title,
      String? userName,
      GifImage originalImage,
      GifImage thumbnail});

  $GifImageCopyWith<$Res> get originalImage;
  $GifImageCopyWith<$Res> get thumbnail;
}

/// @nodoc
class _$GifObjectCopyWithImpl<$Res, $Val extends GifObject>
    implements $GifObjectCopyWith<$Res> {
  _$GifObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userName = freezed,
    Object? originalImage = null,
    Object? thumbnail = null,
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
      originalImage: null == originalImage
          ? _value.originalImage
          : originalImage // ignore: cast_nullable_to_non_nullable
              as GifImage,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as GifImage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GifImageCopyWith<$Res> get originalImage {
    return $GifImageCopyWith<$Res>(_value.originalImage, (value) {
      return _then(_value.copyWith(originalImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GifImageCopyWith<$Res> get thumbnail {
    return $GifImageCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GifObjectImplCopyWith<$Res>
    implements $GifObjectCopyWith<$Res> {
  factory _$$GifObjectImplCopyWith(
          _$GifObjectImpl value, $Res Function(_$GifObjectImpl) then) =
      __$$GifObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? userName,
      GifImage originalImage,
      GifImage thumbnail});

  @override
  $GifImageCopyWith<$Res> get originalImage;
  @override
  $GifImageCopyWith<$Res> get thumbnail;
}

/// @nodoc
class __$$GifObjectImplCopyWithImpl<$Res>
    extends _$GifObjectCopyWithImpl<$Res, _$GifObjectImpl>
    implements _$$GifObjectImplCopyWith<$Res> {
  __$$GifObjectImplCopyWithImpl(
      _$GifObjectImpl _value, $Res Function(_$GifObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userName = freezed,
    Object? originalImage = null,
    Object? thumbnail = null,
  }) {
    return _then(_$GifObjectImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      originalImage: null == originalImage
          ? _value.originalImage
          : originalImage // ignore: cast_nullable_to_non_nullable
              as GifImage,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as GifImage,
    ));
  }
}

/// @nodoc

class _$GifObjectImpl implements _GifObject {
  const _$GifObjectImpl(
      {required this.title,
      this.userName,
      required this.originalImage,
      required this.thumbnail});

  @override
  final String title;
  @override
  final String? userName;
  @override
  final GifImage originalImage;
  @override
  final GifImage thumbnail;

  @override
  String toString() {
    return 'GifObject(title: $title, userName: $userName, originalImage: $originalImage, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GifObjectImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.originalImage, originalImage) ||
                other.originalImage == originalImage) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, userName, originalImage, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GifObjectImplCopyWith<_$GifObjectImpl> get copyWith =>
      __$$GifObjectImplCopyWithImpl<_$GifObjectImpl>(this, _$identity);
}

abstract class _GifObject implements GifObject {
  const factory _GifObject(
      {required final String title,
      final String? userName,
      required final GifImage originalImage,
      required final GifImage thumbnail}) = _$GifObjectImpl;

  @override
  String get title;
  @override
  String? get userName;
  @override
  GifImage get originalImage;
  @override
  GifImage get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$GifObjectImplCopyWith<_$GifObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
