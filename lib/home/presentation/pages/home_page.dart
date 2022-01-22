import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurants"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/login');
              },
              child: const Text("Login"),
            ),
            const Text("No tienes una cuenta?"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/signUp');
              },
              child: const Text("Registrate"),
            ),
          ],
        ),
      ),
    );
  }
}
