import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/presentation/provider/workspace_provider.dart';
import 'package:uzume_mobile/data/entity/image_info_entity.dart';
import 'package:uzume_mobile/presentation/provider/image_info_list_provider.dart';
import 'package:uzume_mobile/presentation/view/image_view.dart';

class ThumbnailGridWidget extends ConsumerStatefulWidget {
  const ThumbnailGridWidget({Key? key}): super(key: key);

  @override
  ConsumerState<ThumbnailGridWidget> createState() => ThumbnailGridWidgetState();
}

class ThumbnailGridWidgetState extends ConsumerState<ThumbnailGridWidget> {
  @override
  Widget build(BuildContext context) {
    ref.watch(workspaceListProvider.future).then((_) {
      final ws = ref.watch(currentWorkspaceProvider);
      if (ws != null) ref.read(imageInfoListProvider(ws.workspaceId).notifier).load(ref);
    });

    final currentWorkspace = ref.watch(currentWorkspaceProvider);

    if (currentWorkspace == null) return const Text('workspaceが決まっていません');

    final workspaceId = currentWorkspace.workspaceId;
    final imageInfoList = ref.watch(imageInfoListProvider(workspaceId));

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        children: [
          for (ImageInfoEntity imageInfo in imageInfoList) ... {
            ref.watch(thumbImageProvider(imageInfo.imageId)).when(
              data: (imageUint8List) => ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: GestureDetector(
                  child: Image.memory(
                    imageUint8List,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Future(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ImageView(imageId: imageInfo.imageId)),
                      );
                    });
                  },
                ),
              ),
              error: (error, stack) => Text(error.toString()),
              loading: () => const Text('loading'),
            )
          },
        ],
      ),
    );
  }
}
