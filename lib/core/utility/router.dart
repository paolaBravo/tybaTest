import 'package:get/get.dart';
import 'package:tyba_test/home/presentation/pages/home_page.dart';
import 'package:tyba_test/login/presentation/pages/login_page.dart';
import 'package:tyba_test/restaurants/presentation/pages/restaurants_page.dart';
import 'package:tyba_test/sign_up/presentation/pages/sign_up_page.dart';

class Router {
  static final routes = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/signUp',
      page: () => SignUpPage(),
    ),
    GetPage(
      name: '/restaurants',
      page: () => RestaurantsPage(),
    ),
    GetPage(
      name: '/home',
      page: () => HomePage(),
    ),
  ];
}
