// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultsDtoImpl _$$SearchResultsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultsDtoImpl(
      objects: (json['data'] as List<dynamic>)
          .map((e) => GifObjectDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationDto.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResultsDtoImplToJson(
        _$SearchResultsDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.objects,
      'pagination': instance.pagination,
    };
