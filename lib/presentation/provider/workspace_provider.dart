import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/domain/usecase/workspace_usecase.dart';
import 'package:uzume_mobile/data/entity/workspace_entity.dart';

final workspaceUseCaseProvider = Provider<WorkspaceUseCase>((ref) => WorkspaceUseCase());
final workspaceListProvider = FutureProvider.autoDispose<List<WorkspaceEntity>>((ref) async {
  final workspaceList = await ref.watch(workspaceUseCaseProvider).fetchWorkspaceList();
  if (workspaceList.isNotEmpty) {
    ref.read(currentWorkspaceProvider.notifier).state = workspaceList.first;
  }
  return workspaceList;
});
final sessionProvider = FutureProvider.family<String, String>((ref, workspaceId) async {
  final useCase = ref.watch(workspaceUseCaseProvider);
  return await useCase.login(workspaceId);
});
final workspaceIconProvider = FutureProvider.family<Image, String>((ref, workspaceId) async {
  final useCase = ref.watch(workspaceUseCaseProvider);
  final String token = await ref.watch(sessionProvider(workspaceId).future);
  return await useCase.fetchIcon(workspaceId, token);
});

final currentWorkspaceProvider = StateProvider.autoDispose<WorkspaceEntity?>((ref) => null);
