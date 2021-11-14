import 'package:get/get.dart';

import 'controller.dart';

class ThemeSearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeSearchController>(() => ThemeSearchController());
  }
}
