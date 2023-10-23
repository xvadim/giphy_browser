// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationDto _$PaginationDtoFromJson(Map<String, dynamic> json) {
  return _PaginationDto.fromJson(json);
}

/// @nodoc
mixin _$PaginationDto {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationDtoCopyWith<PaginationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDtoCopyWith<$Res> {
  factory $PaginationDtoCopyWith(
          PaginationDto value, $Res Function(PaginationDto) then) =
      _$PaginationDtoCopyWithImpl<$Res, PaginationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount, int count, int offset});
}

/// @nodoc
class _$PaginationDtoCopyWithImpl<$Res, $Val extends PaginationDto>
    implements $PaginationDtoCopyWith<$Res> {
  _$PaginationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? count = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationDtoImplCopyWith<$Res>
    implements $PaginationDtoCopyWith<$Res> {
  factory _$$PaginationDtoImplCopyWith(
          _$PaginationDtoImpl value, $Res Function(_$PaginationDtoImpl) then) =
      __$$PaginationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount, int count, int offset});
}

/// @nodoc
class __$$PaginationDtoImplCopyWithImpl<$Res>
    extends _$PaginationDtoCopyWithImpl<$Res, _$PaginationDtoImpl>
    implements _$$PaginationDtoImplCopyWith<$Res> {
  __$$PaginationDtoImplCopyWithImpl(
      _$PaginationDtoImpl _value, $Res Function(_$PaginationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? count = null,
    Object? offset = null,
  }) {
    return _then(_$PaginationDtoImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationDtoImpl implements _PaginationDto {
  const _$PaginationDtoImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      required this.count,
      required this.offset});

  factory _$PaginationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDtoImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  final int count;
  @override
  final int offset;

  @override
  String toString() {
    return 'PaginationDto(totalCount: $totalCount, count: $count, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDtoImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, count, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDtoImplCopyWith<_$PaginationDtoImpl> get copyWith =>
      __$$PaginationDtoImplCopyWithImpl<_$PaginationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDtoImplToJson(
      this,
    );
  }
}

abstract class _PaginationDto implements PaginationDto {
  const factory _PaginationDto(
      {@JsonKey(name: 'total_count') required final int totalCount,
      required final int count,
      required final int offset}) = _$PaginationDtoImpl;

  factory _PaginationDto.fromJson(Map<String, dynamic> json) =
      _$PaginationDtoImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  int get count;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$PaginationDtoImplCopyWith<_$PaginationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
