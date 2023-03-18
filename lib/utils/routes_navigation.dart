// Routes and navigation
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// WARNING, consider using: "Get.to(() => Page())" instead of "Get.to(Page())".

class RoutesNavigation extends StatefulWidget {
  const RoutesNavigation({Key? key}) : super(key: key);

  @override
  State<RoutesNavigation> createState() => _RoutesNavigationState();
}

class _RoutesNavigationState extends State<RoutesNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorials'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ScreenOne(),
                //   ),
                // );
                // Get.to(ScreenOne(name: 'Muhammad Bilal',));
                Get.toNamed(
                  '/screenOne',
                  arguments: [
                    'Muhammad Bilal Akbar',
                    'My name is this',
                    '3rd',
                  ],
                );
              },
              child: const Text('Go to next screen'),
            ),
            const Text('This is random to check the height'),
          ],
        ),
      ),
    );
  }
}
