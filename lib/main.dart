import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImagePickerDemo(),
    );
  }
}
class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({Key? key}) : super(key: key);

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if(image!=null)
            Image.file(File(image!.path)),
          ElevatedButton(
              onPressed: () async {
                final ImagePicker picker = ImagePicker();
                 image = await picker.pickImage(source:ImageSource.gallery);
                 setState(() {

                 });
                 print("image ${image?.path}");
                }, child: Text("Share")),
        ],
      )
    );
  }
}

