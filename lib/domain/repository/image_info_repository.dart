import 'dart:convert';
import 'dart:typed_data';
import 'package:uzume_mobile/data/entity/image_info_res_entity.dart';
import './uzume_api_helper.dart';

class ImageInfoRepository with UzumeApiHelper {
  Future<ImageInfoResEntity> getList(String workspaceId, String token) async {
    final response = await get('/api/v1/images',
      accessString: buildAccessString(workspaceId, token)
    );
    print(response.body.toString());
    Map<String, dynamic> jsonData = json.decode(response.body.toString());
    return ImageInfoResEntity.fromJson(jsonData);
  }

  Future<Uint8List> getImage(String workspaceId, String token, String imageId, {required bool isThumb}) async {
    final imageSize = isThumb ? 'thumbnail' : 'original';
    final response = await get('/api/v1/images/$imageId/file?image_size=$imageSize',
      accessString: buildAccessString(workspaceId, token),
      contentType: 'image',
    );

    // TODO:
    if (response.statusCode != 200) throw '';

    return response.bodyBytes;
  }
}
