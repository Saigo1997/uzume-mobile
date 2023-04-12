import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/presentation/provider/workspace_provider.dart';
import 'package:uzume_mobile/data/entity/workspace_entity.dart';

import './workspace_icon_widget.dart';

class SideMenuWidget extends ConsumerStatefulWidget {
  const SideMenuWidget({Key? key}): super(key: key);

  @override
  ConsumerState<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends ConsumerState<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    final workspaceList = ref.watch(workspaceListProvider);

    return Drawer(
      child: ListView(
        children: [
          ...[
            workspaceList.when(
              data: (data) => Column(
                children: [
                  const ListTile(
                    title: Center(
                      child: Text('Workspaces')
                    ),
                  ),
                  for (WorkspaceEntity entity in data) ... {
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: WorkspaceIconWidget(workspaceId: entity.workspaceId),
                        ),
                      ),
                      title: Text(entity.name),
                      onTap: () {
                        ref.read(currentWorkspaceProvider.notifier).state = entity;
                        Navigator.pop(context); // Drawerを閉じる
                      },
                    )
                  }
                ],
              ),
              error: (err, stack) => Text('workspace list load error: $err'),
              loading: () => const Text('loading workspace list'),
            ),
          ]
        ],
      )
    );
  }
}
