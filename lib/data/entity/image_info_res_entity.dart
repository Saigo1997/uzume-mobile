import 'package:freezed_annotation/freezed_annotation.dart';
import './image_info_entity.dart';
part 'image_info_res_entity.freezed.dart';
part 'image_info_res_entity.g.dart';

@freezed
class ImageInfoResEntity with _$ImageInfoResEntity {
  const factory ImageInfoResEntity({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'images') required List<ImageInfoEntity> images,
  }) = _ImageInfoResEntity;
  factory ImageInfoResEntity.fromJson(Map<String, dynamic> json) => _$ImageInfoResEntityFromJson(json);
}
