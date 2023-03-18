import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  double opacity = 0.4;

  final exampleTwoController = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Two'),
      ),
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(exampleTwoController.opacity.value),
            );
          }),
          Obx(() {
            return Slider(
              value: exampleTwoController.opacity.value,
              onChanged: (value) {
                debugPrint(value.toString());
                // setState(() {
                //   opacity = value;
                // });
                exampleTwoController.setOpacity(value);
              },
            );
          })
        ],
      ),
    );
  }
}

class ExampleTwoController extends GetxController {
  final opacity = 0.4.obs;

  setOpacity(double newValue) => opacity.value = newValue;
}
