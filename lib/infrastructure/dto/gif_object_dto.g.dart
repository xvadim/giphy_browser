// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif_object_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GifObjectDtoImpl _$$GifObjectDtoImplFromJson(Map<String, dynamic> json) =>
    _$GifObjectDtoImpl(
      title: json['title'] as String,
      userName: json['username'] as String?,
      images: ImagesDto.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GifObjectDtoImplToJson(_$GifObjectDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'username': instance.userName,
      'images': instance.images,
    };
