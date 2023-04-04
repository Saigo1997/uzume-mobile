import 'package:freezed_annotation/freezed_annotation.dart';
part 'workspace_entity.freezed.dart';
part 'workspace_entity.g.dart';

@freezed
class WorkspaceEntity with _$WorkspaceEntity {
  const factory WorkspaceEntity({
    @JsonKey(name: 'workspace_id') required String workspaceId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'available') required bool available
  }) = _WorkspaceEntity;
  factory WorkspaceEntity.fromJson(Map<String, dynamic> json) => _$WorkspaceEntityFromJson(json);
}
