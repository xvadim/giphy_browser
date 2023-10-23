// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_results_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultsDto _$SearchResultsDtoFromJson(Map<String, dynamic> json) {
  return _SearchResultsDto.fromJson(json);
}

/// @nodoc
mixin _$SearchResultsDto {
  @JsonKey(name: 'data')
  List<GifObjectDto> get objects => throw _privateConstructorUsedError;
  PaginationDto get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultsDtoCopyWith<SearchResultsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsDtoCopyWith<$Res> {
  factory $SearchResultsDtoCopyWith(
          SearchResultsDto value, $Res Function(SearchResultsDto) then) =
      _$SearchResultsDtoCopyWithImpl<$Res, SearchResultsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<GifObjectDto> objects,
      PaginationDto pagination});

  $PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class _$SearchResultsDtoCopyWithImpl<$Res, $Val extends SearchResultsDto>
    implements $SearchResultsDtoCopyWith<$Res> {
  _$SearchResultsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objects = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<GifObjectDto>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationDtoCopyWith<$Res> get pagination {
    return $PaginationDtoCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultsDtoImplCopyWith<$Res>
    implements $SearchResultsDtoCopyWith<$Res> {
  factory _$$SearchResultsDtoImplCopyWith(_$SearchResultsDtoImpl value,
          $Res Function(_$SearchResultsDtoImpl) then) =
      __$$SearchResultsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<GifObjectDto> objects,
      PaginationDto pagination});

  @override
  $PaginationDtoCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$SearchResultsDtoImplCopyWithImpl<$Res>
    extends _$SearchResultsDtoCopyWithImpl<$Res, _$SearchResultsDtoImpl>
    implements _$$SearchResultsDtoImplCopyWith<$Res> {
  __$$SearchResultsDtoImplCopyWithImpl(_$SearchResultsDtoImpl _value,
      $Res Function(_$SearchResultsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objects = null,
    Object? pagination = null,
  }) {
    return _then(_$SearchResultsDtoImpl(
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<GifObjectDto>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultsDtoImpl implements _SearchResultsDto {
  const _$SearchResultsDtoImpl(
      {@JsonKey(name: 'data') required final List<GifObjectDto> objects,
      required this.pagination})
      : _objects = objects;

  factory _$SearchResultsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultsDtoImplFromJson(json);

  final List<GifObjectDto> _objects;
  @override
  @JsonKey(name: 'data')
  List<GifObjectDto> get objects {
    if (_objects is EqualUnmodifiableListView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

  @override
  final PaginationDto pagination;

  @override
  String toString() {
    return 'SearchResultsDto(objects: $objects, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultsDtoImpl &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_objects), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsDtoImplCopyWith<_$SearchResultsDtoImpl> get copyWith =>
      __$$SearchResultsDtoImplCopyWithImpl<_$SearchResultsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultsDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchResultsDto implements SearchResultsDto {
  const factory _SearchResultsDto(
      {@JsonKey(name: 'data') required final List<GifObjectDto> objects,
      required final PaginationDto pagination}) = _$SearchResultsDtoImpl;

  factory _SearchResultsDto.fromJson(Map<String, dynamic> json) =
      _$SearchResultsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<GifObjectDto> get objects;
  @override
  PaginationDto get pagination;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultsDtoImplCopyWith<_$SearchResultsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
