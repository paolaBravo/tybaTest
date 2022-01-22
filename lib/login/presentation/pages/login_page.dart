import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyba_test/login/presentation/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Email"),
            SizedBox(height: Get.height * 0.005),
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  borderSide: BorderSide(
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            const Text("Password"),
            SizedBox(height: Get.height * 0.005),
            TextFormField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  borderSide: BorderSide(
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            OutlinedButton(
              onPressed: () {
                controller.logInWithEmailAndPassword();
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
