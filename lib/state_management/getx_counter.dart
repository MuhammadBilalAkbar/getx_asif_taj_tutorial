import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_asif_taj_tutorial/state_management/counter_controller.dart';

class GetxCounter extends StatefulWidget {
  const GetxCounter({Key? key}) : super(key: key);

  @override
  State<GetxCounter> createState() => _GetxCounterState();
}

class _GetxCounterState extends State<GetxCounter> {
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    debugPrint('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter Example'),
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
