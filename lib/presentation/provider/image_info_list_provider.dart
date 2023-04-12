import 'dart:typed_data';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/data/entity/image_info_entity.dart';
import 'package:uzume_mobile/domain/repository/image_info_repository.dart';

import './workspace_provider.dart';

final imageInfoRepositoryProvider = Provider<ImageInfoRepository>((ref) => ImageInfoRepository());

class ImageInfoListNotifier extends StateNotifier<List<ImageInfoEntity>> {
  ImageInfoListNotifier({
    required this.workspaceId,
  }): super([]);

  final String workspaceId;

  // TOOD: もう少しきれいに設計しないと、ページネーションに耐えられなさそう

  void load(WidgetRef ref) async {
    if (state.isNotEmpty) return; // TODO: すでに取得したブロックかどうかを見たい

    final repository = ref.watch(imageInfoRepositoryProvider);
    final token = await ref.watch(sessionProvider(workspaceId).future);
    final res = await repository.getList(workspaceId, token);
    state = res.images;
  }
}

final imageInfoListProvider = StateNotifierProvider
  .family<ImageInfoListNotifier, List<ImageInfoEntity>, String>((ref, workspaceId) {
  return ImageInfoListNotifier(workspaceId: workspaceId);
});

final thumbImageProvider = FutureProvider.family<Uint8List, String>((ref, imageId) async {
  final repository = ref.watch(imageInfoRepositoryProvider);
  final currentWorkspace = ref.watch(currentWorkspaceProvider);
  if (currentWorkspace == null) throw ''; // TODO:

  final token = await ref.watch(sessionProvider(currentWorkspace.workspaceId).future);
  return repository.getImage(currentWorkspace.workspaceId, token, imageId, isThumb: true);
});

final imageProvider = FutureProvider.family<Uint8List, String>((ref, imageId) async {
  final repository = ref.watch(imageInfoRepositoryProvider);
  final currentWorkspace = ref.watch(currentWorkspaceProvider);
  if (currentWorkspace == null) throw ''; // TODO:

  final token = await ref.watch(sessionProvider(currentWorkspace.workspaceId).future);
  return repository.getImage(currentWorkspace.workspaceId, token, imageId, isThumb: false);
});
