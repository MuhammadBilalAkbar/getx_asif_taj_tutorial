// SnackBar, Dark/Light Theme, BottomSheet
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarBottomSheetTheme extends StatefulWidget {
  const SnackBarBottomSheetTheme({Key? key}) : super(key: key);

  @override
  State<SnackBarBottomSheetTheme> createState() =>
      _SnackBarBottomSheetThemeState();
}

class _SnackBarBottomSheetThemeState extends State<SnackBarBottomSheetTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorials'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text('GetX Dialog Alert'),
                subtitle: const Text('GetX dialog alert with getx'),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: const EdgeInsets.only(top: 20),
                    contentPadding: const EdgeInsets.all(20),
                    // middleText: 'Are you sure you want to delete this chat?', //Use content for more text
                    content: Column(
                      children: const [
                        Text('More Content'),
                        Text('More Content'),
                        Text('More Content'),
                        Text('More Content'),
                        Text('More Content'),
                      ],
                    ),
                    // textConfirm: 'Yes',
                    confirm: TextButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Get.back();
                      },
                      child: const Text('Ok'),
                    ),
                    // textCancel: 'No',
                    cancel: TextButton(
                      onPressed: () {},
                      child: const Text('Cancel'),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('GetX Bottom Sheet'),
                subtitle: const Text('GetX Change Theme'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.light_mode),
                            title: const Text('Light Theme'),
                            onTap: () => Get.changeTheme(ThemeData.light()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text('Dark Theme'),
                            onTap: () => Get.changeTheme(ThemeData.dark()),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Muhammad Bilal',
            'Subscribe to my channel',
            icon: const Icon(Icons.add),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.TOP,
            onTap: (snackBar) {},
            mainButton: TextButton(
              onPressed: () {},
              child: const Text('Click'),
            ),
          );
        },
        child: const Text('SnackBar'),
      ),
    );
  }
}
