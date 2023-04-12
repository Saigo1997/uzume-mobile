import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/domain/repository/workspace_repository.dart';
import 'package:uzume_mobile/data/entity/workspace_entity.dart';

final workspaceRepositoryProvider = Provider<WorkspaceRepository>((ref) => WorkspaceRepository());

final currentWorkspaceProvider = StateProvider<WorkspaceEntity?>((ref) => null);
final workspaceListProvider = FutureProvider<List<WorkspaceEntity>>((ref) async {
  final workspaceList = await ref.watch(workspaceRepositoryProvider).fetchWorkspaceList();
  if (workspaceList.isNotEmpty) {
    ref.read(currentWorkspaceProvider.notifier).state = workspaceList.first;
  }
  return workspaceList;
});
final workspaceIconProvider = FutureProvider.family<Image, String>((ref, workspaceId) async {
  final String token = await ref.watch(sessionProvider(workspaceId).future);
  return await ref.watch(workspaceRepositoryProvider).fetchIcon(workspaceId, token);
});

final sessionProvider = FutureProvider.family<String, String>((ref, workspaceId) async {
  return await ref.watch(workspaceRepositoryProvider).getAccessToken(workspaceId);
});
