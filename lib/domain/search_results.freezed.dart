// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResults {
  int get total => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<GifObject> get gifObjects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultsCopyWith<SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(
          SearchResults value, $Res Function(SearchResults) then) =
      _$SearchResultsCopyWithImpl<$Res, SearchResults>;
  @useResult
  $Res call({int total, int offset, int count, List<GifObject> gifObjects});
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res, $Val extends SearchResults>
    implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? offset = null,
    Object? count = null,
    Object? gifObjects = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      gifObjects: null == gifObjects
          ? _value.gifObjects
          : gifObjects // ignore: cast_nullable_to_non_nullable
              as List<GifObject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultsImplCopyWith<$Res>
    implements $SearchResultsCopyWith<$Res> {
  factory _$$SearchResultsImplCopyWith(
          _$SearchResultsImpl value, $Res Function(_$SearchResultsImpl) then) =
      __$$SearchResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int offset, int count, List<GifObject> gifObjects});
}

/// @nodoc
class __$$SearchResultsImplCopyWithImpl<$Res>
    extends _$SearchResultsCopyWithImpl<$Res, _$SearchResultsImpl>
    implements _$$SearchResultsImplCopyWith<$Res> {
  __$$SearchResultsImplCopyWithImpl(
      _$SearchResultsImpl _value, $Res Function(_$SearchResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? offset = null,
    Object? count = null,
    Object? gifObjects = null,
  }) {
    return _then(_$SearchResultsImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      gifObjects: null == gifObjects
          ? _value._gifObjects
          : gifObjects // ignore: cast_nullable_to_non_nullable
              as List<GifObject>,
    ));
  }
}

/// @nodoc

class _$SearchResultsImpl implements _SearchResults {
  const _$SearchResultsImpl(
      {required this.total,
      required this.offset,
      required this.count,
      required final List<GifObject> gifObjects})
      : _gifObjects = gifObjects;

  @override
  final int total;
  @override
  final int offset;
  @override
  final int count;
  final List<GifObject> _gifObjects;
  @override
  List<GifObject> get gifObjects {
    if (_gifObjects is EqualUnmodifiableListView) return _gifObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gifObjects);
  }

  @override
  String toString() {
    return 'SearchResults(total: $total, offset: $offset, count: $count, gifObjects: $gifObjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._gifObjects, _gifObjects));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total, offset, count,
      const DeepCollectionEquality().hash(_gifObjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      __$$SearchResultsImplCopyWithImpl<_$SearchResultsImpl>(this, _$identity);
}

abstract class _SearchResults implements SearchResults {
  const factory _SearchResults(
      {required final int total,
      required final int offset,
      required final int count,
      required final List<GifObject> gifObjects}) = _$SearchResultsImpl;

  @override
  int get total;
  @override
  int get offset;
  @override
  int get count;
  @override
  List<GifObject> get gifObjects;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
