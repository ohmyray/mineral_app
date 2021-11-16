import 'package:get/get.dart';

import 'controller.dart';

class InfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoController>(() => InfoController());
  }
}
