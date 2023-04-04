import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uzume_mobile/data/data_store/uzume_conn_info_memory_data_store.dart';
import 'package:uzume_mobile/data/entity/backend_version_entity.dart';

class BackendCheckUseCase {
  final dataStore = UzumeConnInfoMemoryDataStoreImpl();

  Future<String> fetchVersion() async {
    debugPrint('begin fetchVersion');
    final connInfo = dataStore.read();
    // TODO: data層に
    final url = Uri.parse('http://${connInfo.host}:${connInfo.port}/api/version');
    debugPrint('url: $url');
    final headers = {
      'Content-Type': 'application/json',
    };
    final response = await http.get(url, headers: headers);
    debugPrint('response');
    debugPrint('response: ${response.statusCode}');
    debugPrint('response: ${response.body.toString()}');

    BackendVersionEntity entity = BackendVersionEntity.fromJson(json.decode(response.body.toString()));

    return entity.version;
  }
}
