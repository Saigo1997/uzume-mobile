import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/presentation/provider/workspace_provider.dart';

class WorkspaceIconWidget extends ConsumerStatefulWidget {
  const WorkspaceIconWidget({
    Key? key,
    required this.workspaceId,
  }): super(key: key);

  final String workspaceId;

  @override
  ConsumerState<WorkspaceIconWidget> createState() => _WorkspaceIconWidgetState();
}

class _WorkspaceIconWidgetState extends ConsumerState<WorkspaceIconWidget> {
  @override
  Widget build(BuildContext context) {
    final workspaceIcon = ref.watch(workspaceIconProvider(widget.workspaceId));
    return workspaceIcon.when(
      data: (icon) => AspectRatio(
        aspectRatio: 1.0,
        child: icon,
      ),
      loading: () => Image.asset('assets/app_icon.png'),
      error: (err, stack) => Image.asset('assets/app_icon.png'),
    );
  }
}
