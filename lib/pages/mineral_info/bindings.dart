import 'package:get/get.dart';

import 'controller.dart';

class MineralInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MineralInfoController>(() => MineralInfoController());
  }
}
