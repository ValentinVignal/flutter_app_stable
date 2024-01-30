import 'package:exif/exif.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: FilledButton(
          onPressed: () async {
            final picker = ImagePicker();
            final file = await picker.pickImage(
              source: ImageSource.gallery,
              // imageQuality: 50, // <- Uncomment this line.
            );
            if (file == null) return;
            final exif = await readExifFromBytes(await file.readAsBytes());
            print(exif);
          },
          child: const Text('Upload image'),
        ),
      )),
    );
  }
}
