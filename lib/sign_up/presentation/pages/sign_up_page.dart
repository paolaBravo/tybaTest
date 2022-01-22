import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyba_test/sign_up/presentation/controller/sign_up_controller.dart';

class SignUpPage extends StatelessWidget {
  final SignUpController controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Registrate"),
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
                  controller.register();
                },
                child: const Text("Registrate"),
              ),
            ],
          ),
        ));
  }
}
