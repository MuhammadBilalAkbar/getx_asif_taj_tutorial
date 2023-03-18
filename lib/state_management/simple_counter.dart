import 'dart:async';

import 'package:flutter/material.dart';

class SimpleCounter extends StatefulWidget {
  const SimpleCounter({Key? key}) : super(key: key);

  @override
  State<SimpleCounter> createState() => _SimpleCounterState();
}

class _SimpleCounterState extends State<SimpleCounter> {
  int x = 20;

  // @override
  // void initState() {
  //   Timer.periodic(Duration(milliseconds: 1), (timer) {
  //     setState(() {
  //       x++;
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    debugPrint('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(x.toString()),
            Expanded(
              child: ListView.builder(
                itemCount: 10000,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(index.toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            x++;
          });
        },
      ),
    );
  }
}
