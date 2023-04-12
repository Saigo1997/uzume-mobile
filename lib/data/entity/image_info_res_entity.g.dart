// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_info_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageInfoResEntity _$$_ImageInfoResEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ImageInfoResEntity(
      page: json['page'] as int,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageInfoEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ImageInfoResEntityToJson(
        _$_ImageInfoResEntity instance) =>
    <String, dynamic>{
      'page': instance.page,
      'images': instance.images,
    };
