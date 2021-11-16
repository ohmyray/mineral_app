// import '/pages/category/index.dart';
// import '/pages/main/index.dart';
import 'package:get/get.dart';
import '/pages/map/index.dart';

import 'controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<AMapController>(() => AMapController());
  }
}
