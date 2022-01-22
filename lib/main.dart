import 'package:flutter/material.dart' hide Router;
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:tyba_test/core/utility/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GetMaterialApp(
    title: 'Tyba Test',
    debugShowCheckedModeBanner: false,
    getPages: Router.routes,
    initialRoute: '/home',
  ));
}
