import 'package:uzume_mobile/data/data_store/uzume_conn_info_data_store.dart';
import 'package:uzume_mobile/domain/model/uzume_conn_info_model.dart';
import 'package:uzume_mobile/domain/repository/uzume_conn_info_repository.dart';

class UzumeServerUseCase {
  final UzumeConnInfoRepository repository = UzumeConnInfoRepositoryImpl();

  Future<bool> store({required String host, required int port}) async {
    return repository.storeDisk(host: host, port: port);
  }

  Future<UzumeConnInfoModel> load() async {
    final entity = await repository.loadDisk();

    final host = entity.host;
    final port = entity.port;

    if ( host == null || port == null ) throw "invalid conn info";

    return UzumeConnInfoModel(
      host: host,
      port: port,
    );
  }

  Future<UzumeConnInfoRawModel> fetchRaw() async {
    final entity = await repository.loadDisk();

    return UzumeConnInfoRawModel(
      host: entity.host ?? '',
      port: entity.port?.toString() ?? '',
    );
  }

  UzumeConnInfoModel read() {
    final entity = repository.readMemory();

    final host = entity.host;
    final port = entity.port;

    if ( host == null || port == null ) throw "invalid conn info";

    return UzumeConnInfoModel(
      host: host,
      port: port,
    );
  }

  Future<void> debugClear() async {
    await UzumeConnInfoDataStoreImpl().debugClear();
  }
}
