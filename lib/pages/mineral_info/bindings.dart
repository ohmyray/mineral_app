import 'package:get/get.dart';
import 'package:mineral_app/pages/application/index.dart';
import 'package:mineral_app/pages/map/index.dart';
import 'package:mineral_app/pages/theme_search/index.dart';

import 'controller.dart';

class MineralInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MineralInfoController>(() => MineralInfoController());
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<AMapController>(() => AMapController());
    Get.lazyPut<MineralInfoController>(() => MineralInfoController());
    Get.lazyPut<ThemeSearchController>(() => ThemeSearchController());
  }
}
