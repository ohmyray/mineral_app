import 'package:get/get.dart';

import '/pages/root/root_view.dart';
import '/pages/login/login_view.dart';
import '/pages/register/register_view.dart';

class Route {
  static const ROOT = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';

  static final routes = [
    GetPage(name: Route.ROOT, page: () => RootPage()),
    GetPage(name: Route.LOGIN, page: () => LoginPage()),
    GetPage(name: Route.REGISTER, page: () => RegisterPage()),
  ];
}
