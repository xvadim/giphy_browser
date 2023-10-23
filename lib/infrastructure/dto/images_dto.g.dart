// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImagesDtoImpl _$$ImagesDtoImplFromJson(Map<String, dynamic> json) =>
    _$ImagesDtoImpl(
      original: ImageDto.fromJson(json['original'] as Map<String, dynamic>),
      thumbnail: ImageDto.fromJson(json['fixed_width'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImagesDtoImplToJson(_$ImagesDtoImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
      'fixed_width': instance.thumbnail,
    };
