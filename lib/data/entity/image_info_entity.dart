import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_info_entity.freezed.dart';
part 'image_info_entity.g.dart';

@freezed
class ImageInfoEntity with _$ImageInfoEntity {
  const factory ImageInfoEntity({
    @JsonKey(name: 'image_id') required String imageId,
    @JsonKey(name: 'file_name') required String fileName,
    @JsonKey(name: 'ext') required String ext,
    @JsonKey(name: 'width') required int width,
    @JsonKey(name: 'height') required int height,
    @JsonKey(name: 'memo') required String memo,
    @JsonKey(name: 'author') required String author,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'tags') required List<String> tags,
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'is_group_thumb_nail') required bool isGroupThumbNail,
  }) = _ImageInfoEntity;
  factory ImageInfoEntity.fromJson(Map<String, dynamic> json) => _$ImageInfoEntityFromJson(json);
}
