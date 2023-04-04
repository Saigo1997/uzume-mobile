import 'package:uzume_mobile/data/entity/uzume_conn_info_entity.dart';

String? _host;
int? _port;

abstract class UzumeConnInfoMemoryDataStore {
  void write({required String? host, required int? port});
  UzumeConnInfoEntity read();
}

class UzumeConnInfoMemoryDataStoreImpl implements UzumeConnInfoMemoryDataStore {
  @override
  void write({required String? host, required int? port}) {
    _host = host;
    _port = port;
  }

  @override
  UzumeConnInfoEntity read() {
    return UzumeConnInfoEntity(
      host: _host,
      port: _port,
    );
  }
}
