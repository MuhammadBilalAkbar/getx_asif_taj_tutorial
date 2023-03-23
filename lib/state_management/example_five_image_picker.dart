import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ExampleFiveImagePicker extends StatefulWidget {
  const ExampleFiveImagePicker({Key? key}) : super(key: key);

  @override
  State<ExampleFiveImagePicker> createState() => _ExampleFiveImagePickerState();
}

class _ExampleFiveImagePickerState extends State<ExampleFiveImagePicker> {
  final imagePickerController = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Five Image Picker'),
      ),
      body: Obx(() {
        return Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                // backgroundImage: FileImage(
                //   File(imagePickerController.imagePath.toString()),
                // ),
                backgroundImage: imagePickerController.imagePath.isNotEmpty
                    ? FileImage(
                        File(imagePickerController.imagePath.toString()),
                      )
                    : null,
              ),
              TextButton(
                onPressed: () {
                  imagePickerController.getImage();
                },
                child: Text('Pick Image'),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class ImagePickerController extends GetxController {
  final imagePath = ''.obs;

  Future getImage() async {
    final imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
