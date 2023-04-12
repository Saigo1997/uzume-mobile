// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageInfoEntity _$$_ImageInfoEntityFromJson(Map<String, dynamic> json) =>
    _$_ImageInfoEntity(
      imageId: json['image_id'] as String,
      fileName: json['file_name'] as String,
      ext: json['ext'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      memo: json['memo'] as String,
      author: json['author'] as String,
      createdAt: json['created_at'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      groupId: json['group_id'] as String,
      isGroupThumbNail: json['is_group_thumb_nail'] as bool,
    );

Map<String, dynamic> _$$_ImageInfoEntityToJson(_$_ImageInfoEntity instance) =>
    <String, dynamic>{
      'image_id': instance.imageId,
      'file_name': instance.fileName,
      'ext': instance.ext,
      'width': instance.width,
      'height': instance.height,
      'memo': instance.memo,
      'author': instance.author,
      'created_at': instance.createdAt,
      'tags': instance.tags,
      'group_id': instance.groupId,
      'is_group_thumb_nail': instance.isGroupThumbNail,
    };
