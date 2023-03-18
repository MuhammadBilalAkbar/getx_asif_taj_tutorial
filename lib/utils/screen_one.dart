import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key, required this.name}) : super(key: key);

  final name;

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One, ${Get.arguments[2]}'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pop(context); // By Flutter
                Get.back(); // By GetX
                Get.to(const ScreenTwo());
              },
              child: const Text('Go to screen two'),
            ),
          ],
        ),
      ),
    );
  }
}
