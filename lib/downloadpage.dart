import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({super.key, required this.title, required this.bytes});
  final String title;
  final Uint8List bytes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Preview Image',
          selectionColor: Color(0xFF191720),
        ),
        actions: [
          IconButton(
              onPressed: () {
                var time = DateTime.now().millisecondsSinceEpoch;
                var dir = '/storage/emulated/0/Download/image-$time.jpg';
                var file = File(dir);
                file.writeAsBytes(bytes);

                print('download');
              },
              icon: const Icon(
                Icons.download,
                color: Colors.white,
              )),
        ],
        backgroundColor: Colors.grey,
      ),
      body: Center(child: Image.memory(bytes)),
    );
  }
}
