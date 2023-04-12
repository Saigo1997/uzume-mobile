import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uzume_mobile/data/data_store/uzume_conn_info_memory_data_store.dart';

mixin UzumeApiHelper {
  final UzumeConnInfoMemoryDataStore _dataStore = UzumeConnInfoMemoryDataStoreImpl();

  Uri buildUrl(String path) {
    final connInfo = _dataStore.read();
    return Uri.parse('http://${connInfo.host}:${connInfo.port}${path}');
  }

  String buildAccessString(String workspaceId, String token) {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode('$workspaceId:$token');
  }

  Map<String, String> buildHeader({
    required String contentType,
    String? accessString,
  }) {
    Map<String, String> headers = {
      'Content-Type': contentType,
    };
    if ( accessString == null ) return headers;

    headers['Authorization'] = 'Basic $accessString';
    return headers;
  }

  Future<http.Response> get(String path, {
    String? accessString,
    String contentType = 'application/json',
  }) async {
    final headers = buildHeader(contentType: contentType, accessString: accessString);
    return http.get(buildUrl(path), headers: headers);
  }

  Future<http.Response> post(String path, {
    String? accessString,
    String contentType = 'application/json',
    required Map<String, String> body,
  }) async {
    final headers = buildHeader(contentType: contentType, accessString: accessString);
    return http.post(buildUrl(path), headers: headers, body: json.encode(body));
  }
}
