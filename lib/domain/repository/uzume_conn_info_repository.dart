import 'package:uzume_mobile/data/data_store/uzume_conn_info_data_store.dart';
import 'package:uzume_mobile/data/data_store/uzume_conn_info_memory_data_store.dart';
import 'package:uzume_mobile/data/entity/uzume_conn_info_entity.dart';

abstract class UzumeConnInfoRepository {
  Future<bool> storeDisk({required String host, required int port});
  Future<UzumeConnInfoEntity> loadDisk();
  UzumeConnInfoEntity readMemory();
}

class UzumeConnInfoRepositoryImpl implements UzumeConnInfoRepository {
  final diskDataStore = UzumeConnInfoDataStoreImpl();
  final memoryDataStore = UzumeConnInfoMemoryDataStoreImpl();

  // Diskの読み書き時にメモリにも書く

  @override
  Future<bool> storeDisk({required String host, required int port}) async {
    memoryDataStore.write(host: host, port: port);
    return diskDataStore.store(host: host, port: port);
  }

  @override
  Future<UzumeConnInfoEntity> loadDisk() async {
    final entity = await diskDataStore.load();
    memoryDataStore.write(host: entity.host, port: entity.port);
    return entity;
  }

  @override
  UzumeConnInfoEntity readMemory() {
    return memoryDataStore.read();
  }
}
