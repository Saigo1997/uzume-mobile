import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uzume_mobile/data/data_store/uzume_conn_info_memory_data_store.dart';
import 'package:uzume_mobile/data/entity/workspace_entity.dart';
import 'package:uzume_mobile/data/entity/login_entity.dart';

import 'package:flutter/material.dart';

class WorkspaceUseCase {
  final dataStore = UzumeConnInfoMemoryDataStoreImpl();

  Future<String> login(String workspaceId) async {
    final connInfo = dataStore.read();

    final url = Uri.parse('http://${connInfo.host}:${connInfo.port}/api/v1/workspaces/login');
    final headers = {
      'Content-Type': 'application/json',
    };
    final requestBody = {
      'workspace_id': workspaceId,
    };

    final response = await http.post(url, headers: headers, body: json.encode(requestBody));

    Map<String, dynamic> jsonData = json.decode(response.body.toString());
    final entity = LoginEntity.fromJson(jsonData);

    return entity.accessToken;
  }

  Future<List<WorkspaceEntity>> fetchWorkspaceList() async {
    final connInfo = dataStore.read();

    final url = Uri.parse('http://${connInfo.host}:${connInfo.port}/api/v1/workspaces');
    final headers = {
      'Content-Type': 'application/json',
    };
    final response = await http.get(url, headers: headers);
    List<dynamic> jsonData = json.decode(response.body.toString());

    return jsonData.map((data) => WorkspaceEntity.fromJson(data)).toList();
  }

  Future<Image> fetchIcon(String workspaceId, String token) async {
    final connInfo = dataStore.read();

    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    final url = Uri.parse('http://${connInfo.host}:${connInfo.port}/api/v1/workspaces/icon');
    final accessString = stringToBase64.encode('$workspaceId:$token');
    final headers = {
      'Authorization': 'Basic $accessString',
      'Content-Type': 'image',
    };
    final response = await http.get(url, headers: headers);

    if (response.statusCode != 200) throw '';

    return Image.memory(response.bodyBytes);
  }
}
