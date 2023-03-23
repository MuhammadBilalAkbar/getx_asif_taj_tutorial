import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleTwoSlider extends StatefulWidget {
  const ExampleTwoSlider({Key? key}) : super(key: key);

  @override
  State<ExampleTwoSlider> createState() => _ExampleTwoSliderState();
}

class _ExampleTwoSliderState extends State<ExampleTwoSlider> {
  // double opacity = 0.4;

  final exampleTwoController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Two Slider'),
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

class SliderController extends GetxController {
  final opacity = 0.4.obs;

  setOpacity(double newValue) => opacity.value = newValue;
}
