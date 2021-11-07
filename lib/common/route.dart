import 'package:get/get.dart';
import '/pages/home/home_view.dart';
import '/pages/login/login_view.dart';
import '/pages/register/register_view.dart';

class Route {
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';

  static final routes = [
    GetPage(name: Route.HOME, page: () => LoginPage()),
    GetPage(name: Route.LOGIN, page: () => HomePage()),
    GetPage(name: Route.REGISTER, page: () => RegisterPage()),
  ];
}
