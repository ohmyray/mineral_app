import 'package:get/get.dart';

import 'controller.dart';

class StatisticsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatisticsController>(() => StatisticsController());
  }
}
