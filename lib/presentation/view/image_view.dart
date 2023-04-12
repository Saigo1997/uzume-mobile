import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/presentation/provider/image_info_list_provider.dart';

class ImageView extends ConsumerStatefulWidget {
  const ImageView({
    Key? key,
    required String this.imageId,
  }): super(key: key);

  final String imageId;

  @override
  ConsumerState<ImageView> createState() => ImageViewState();
}

class ImageViewState extends ConsumerState<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('uzume'),
        centerTitle: true,
      ),
      body: Center(
        child: ref.watch(imageProvider(widget.imageId)).when(
          data: (imageUint8List) => Image.memory(
            imageUint8List,
            fit: BoxFit.cover,
          ),
          error: (error, stack) => Text(error.toString()),
          loading: () => const Text('loading'),
        ),
      ),
    );
  }
}
