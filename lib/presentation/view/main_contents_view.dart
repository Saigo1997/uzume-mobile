import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/presentation/provider/workspace_provider.dart';

import './widget/side_menu_widget.dart';
import './widget/thumbnail_grid_widget.dart';

class MainContentsView extends ConsumerStatefulWidget {
  const MainContentsView({Key? key}): super(key: key);

  @override
  ConsumerState<MainContentsView> createState() => _MainContentsViewState();
}

class _MainContentsViewState extends ConsumerState<MainContentsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(ref.watch(currentWorkspaceProvider)?.name ?? 'uzume'),
        centerTitle: true,
      ),
      body: const Center(
        child: ThumbnailGridWidget(),
      ),
      drawer: const SideMenuWidget(),
    );
  }
}
