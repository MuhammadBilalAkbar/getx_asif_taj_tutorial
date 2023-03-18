import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidth extends StatefulWidget {
  const HeightWidth({Key? key}) : super(key: key);

  @override
  State<HeightWidth> createState() => _HeightWidthState();
}

class _HeightWidthState extends State<HeightWidth> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.3;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Container(
            // height: height * 0.3,
            height: Get.height * 0.2,
            width: Get.width * 0.8,
            color: Colors.red,
            child: const Center(
              child: Text('Center'),
            ),
          ),
          Container(
            // height: height * 0.3,
            height: Get.height * 0.2,
            width: Get.width * 0.8,
            color: Colors.green,
            child: const Center(
              child: Text('Center'),
            ),
          ),
        ],
      )
    );
  }
}
