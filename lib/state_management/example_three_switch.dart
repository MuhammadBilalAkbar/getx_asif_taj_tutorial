import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleThreeSwitch extends StatefulWidget {
  const ExampleThreeSwitch({Key? key}) : super(key: key);

  @override
  State<ExampleThreeSwitch> createState() => _ExampleThreeSwitchState();
}

class _ExampleThreeSwitchState extends State<ExampleThreeSwitch> {
  // bool notifications = false;

  final controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Three Switch'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Text('Notifications'),
                Obx(() {
                  return Switch(
                    value: controller.notifications.value,
                    onChanged: (value) {
                      // setState(() {
                      //   notifications = value;
                      // });
                      controller.setNotification(value);
                    },
                  );
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchController extends GetxController {
  final notifications = false.obs;

  setNotification(bool newValue) {
    notifications.value = newValue;
    debugPrint(notifications.value.toString());
  }
}
