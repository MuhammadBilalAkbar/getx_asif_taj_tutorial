import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXCounter extends StatefulWidget {
  const GetXCounter({Key? key}) : super(key: key);

  @override
  State<GetXCounter> createState() => _GetXCounterState();
}

class _GetXCounterState extends State<GetXCounter> {
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    debugPrint('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example One Counter'),
      ),
      body: Center(
        child: Obx(() {
          debugPrint('Only this widget is building again and again');
          return Text(controller.counter.value.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
    debugPrint(counter.value.toString());
  }
}
