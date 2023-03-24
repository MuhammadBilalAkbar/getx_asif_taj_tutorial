import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class PostLoginPage extends StatefulWidget {
  const PostLoginPage({Key? key}) : super(key: key);

  @override
  State<PostLoginPage> createState() => _PostLoginPageState();
}

class _PostLoginPageState extends State<PostLoginPage> {
  final postLoginController = Get.put(PostLoginController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX API Calls'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TextFormField(
                controller: postLoginController.emailController.value,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              TextFormField(
                controller: postLoginController.passwordController.value,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 48),
              Obx(
                () => postLoginController.loading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: postLoginController.loginApi,
                        child: const Text('Login'),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostLoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text
        },
      );
      var data = jsonDecode(response.body);
      debugPrint(response.statusCode.toString());
      debugPrint('data => $data');
      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Congrats!', 'Login successful');
      } else {
        loading.value = false;
        Get.snackbar(data['error'], 'Login failed');
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
      debugPrint('Exception: ${e.toString()}');
    }
  }
}
