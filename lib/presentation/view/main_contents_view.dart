import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/presentation/provider/workspace_provider.dart';
import 'package:uzume_mobile/data/entity/workspace_entity.dart';

import './widget/workspace_icon_widget.dart';

class MainContentsView extends ConsumerStatefulWidget {
  const MainContentsView({Key? key}): super(key: key);

  @override
  ConsumerState<MainContentsView> createState() => _MainContentsViewState();
}

class _MainContentsViewState extends ConsumerState<MainContentsView> {
  @override
  Widget build(BuildContext context) {
    final workspaceList = ref.watch(workspaceListProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(ref.watch(currentWorkspaceProvider)?.name ?? 'uzume'),
        centerTitle: true,
      ),
      body: Center(
        child: workspaceList.when(
          data: (data) => Column(
            children: [
              for (WorkspaceEntity entity in data) ... {
                Text(entity.name)
              }
            ],
          ),
          error: (err, stack) => Text('workspace list load error: $err'),
          loading: () => const Text('loading workspace list'),
        ),
      ),
      drawer: Drawer(
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
      ),
    );
  }
}
