// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkspaceEntity _$$_WorkspaceEntityFromJson(Map<String, dynamic> json) =>
    _$_WorkspaceEntity(
      workspaceId: json['workspace_id'] as String,
      name: json['name'] as String,
      available: json['available'] as bool,
    );

Map<String, dynamic> _$$_WorkspaceEntityToJson(_$_WorkspaceEntity instance) =>
    <String, dynamic>{
      'workspace_id': instance.workspaceId,
      'name': instance.name,
      'available': instance.available,
    };
