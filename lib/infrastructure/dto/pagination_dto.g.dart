// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDtoImpl _$$PaginationDtoImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDtoImpl(
      totalCount: json['total_count'] as int,
      count: json['count'] as int,
      offset: json['offset'] as int,
    );

Map<String, dynamic> _$$PaginationDtoImplToJson(_$PaginationDtoImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'count': instance.count,
      'offset': instance.offset,
    };
