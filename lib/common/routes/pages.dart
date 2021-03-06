import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mineral_app/pages/statistics/index.dart';
import '/pages/category/index.dart';
import '/pages/info/index.dart';
import '/pages/theme_search/index.dart';

import '/pages/map/index.dart';
import '/pages/application/index.dart';
import '/pages/frame/sign_up/index.dart';
import '/pages/frame/sign_in/index.dart';
import '/pages/mineral_info/index.dart';

import '/common/middlewares/middlewares.dart';

import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // 免登陆
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),
    // 需要登录
    GetPage(
      name: AppRoutes.Application,
      page: () => ApplicationPage(),
      binding: ApplicationBinding(),
      // middlewares: [
      //   RouteAuthMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: AppRoutes.Map, page: () => AMapPage(), binding: AMapBinding(),
      // middlewares: [
      //   RouteAuthMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: AppRoutes.MapInfo, // '/info'
      page: () => InfoPage(),
      binding: InfoBinding(),
    ),
    GetPage(
      name: AppRoutes.Category, // '/info'
      page: () => CategoryPage(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: AppRoutes.Statistics, // '/info'
      page: () => StatisticsPage(),
      binding: StatisticsBinding(),
    ),
    GetPage(
      name: AppRoutes.Mineral_Info,
      page: () => MineralInfoPage(),
      binding: MineralInfoBinding(),
      // middlewares: [
      //   RouteAuthMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: AppRoutes.Theme_Search,
      page: () => ThemeSearchPage(),
      binding: ThemeSearchBinding(),
      // middlewares: [
      //   RouteAuthMiddleware(priority: 1),
      // ],
    ),
  ];
}
