// import '/pages/category/index.dart';
// import '/pages/main/index.dart';
import 'package:get/get.dart';

import 'controller.dart';

class AMapBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AMapController>(() => AMapController());
    // Get.lazyPut<MainController>(() => MainController());
    // Get.lazyPut<CategoryController>(() => CategoryController());
  }
}
