import 'package:shared_preferences/shared_preferences.dart';
import 'package:uzume_mobile/data/entity/uzume_conn_info_entity.dart';

abstract class UzumeConnInfoDataStore {
  Future<bool> store({required String host, required int port});
  Future<UzumeConnInfoEntity> load();
  Future<void> debugClear();
}

class UzumeConnInfoDataStoreImpl implements UzumeConnInfoDataStore {
  final String uzumeHostKey = 'uzume-host-key';
  final String uzumePortKey = 'uzume-port-key';

  @override
  Future<bool> store({required String host, required int port}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(uzumeHostKey, host);
    await prefs.setInt(uzumePortKey, port);
    // TODO: エラーハンドリング

    return true;
  }

  @override
  Future<UzumeConnInfoEntity> load() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return UzumeConnInfoEntity(
      host: prefs.getString(uzumeHostKey),
      port: prefs.getInt(uzumePortKey),
    );
  }

  @override
  Future<void> debugClear() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(uzumeHostKey);
    prefs.remove(uzumePortKey);
  }
}
