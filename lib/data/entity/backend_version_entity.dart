import 'package:freezed_annotation/freezed_annotation.dart';
part 'backend_version_entity.freezed.dart';
part 'backend_version_entity.g.dart';

@freezed
class BackendVersionEntity with _$BackendVersionEntity {
  const factory BackendVersionEntity(String version) = _BackendVersionEntity;
  factory BackendVersionEntity.fromJson(Map<String, dynamic> json) => _$BackendVersionEntityFromJson(json);
}
