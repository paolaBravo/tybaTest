import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyba_test/restaurants/data/datasource/restaurant_datasource.dart';
import 'package:tyba_test/restaurants/data/model/response_model.dart';

class RestaurantsController extends GetxController {
  final ciudadController = TextEditingController();
  RestaurantsDatasource restaurantsDatasource = RestaurantsDatasource();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  List restaurants = <Result>[].obs;

  void logOut() async {
    await _auth.signOut();

    Get.offAllNamed('/home');
  }

  getRetauranst() async {
    var response =
        await restaurantsDatasource.getRestaurants(ciudadController.text);
    restaurants.assignAll(response.results);
  }
}
