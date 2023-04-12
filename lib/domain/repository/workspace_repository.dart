import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:uzume_mobile/data/entity/workspace_entity.dart';
import 'package:uzume_mobile/data/entity/login_entity.dart';

import './uzume_api_helper.dart';

class WorkspaceRepository with UzumeApiHelper {
  Future<String> getAccessToken(String workspaceId) async {
    final requestBody = {
      'workspace_id': workspaceId,
    };
    final response = await post('/api/v1/workspaces/login', body: requestBody);
    Map<String, dynamic> jsonData = json.decode(response.body.toString());
    final entity = LoginEntity.fromJson(jsonData);

    return entity.accessToken;
  }

  Future<List<WorkspaceEntity>> fetchWorkspaceList() async {
    final response = await get('/api/v1/workspaces');
    List<dynamic> jsonData = json.decode(response.body.toString());

    return jsonData.map((data) => WorkspaceEntity.fromJson(data)).toList();
  }

  Future<Image> fetchIcon(String workspaceId, String token) async {
    final response = await get('/api/v1/workspaces/icon',
      accessString: buildAccessString(workspaceId, token),
      contentType: 'image',
    );

    // TODO:
    if (response.statusCode != 200) throw '';

    return Image.memory(response.bodyBytes);
  }
}
