import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mineral_app/pages/map/index.dart';
import '/common/routes/routes.dart';
import '/common/utils/utils.dart';
import '/common/values/values.dart';
import 'package:get/get.dart';

import 'index.dart';

class ApplicationController extends GetxController {
  AMapController aMapController = Get.find<AMapController>();

  /// 响应式成员变量

  final state = ApplicationState();
  final TextEditingController searchController = TextEditingController();

  /// 生命周期

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void toNamed(String routeName) {
    Get.toNamed(routeName);
  }

  void changePage(int index) {
    state.page = index;
    if (index == 0) {
      aMapController.state.renderPanelSheet = true;
    } else {
      if (aMapController.state.panelController.isPanelOpen == false) {
        aMapController.state.panelController.open();
      }
    }
  }

  void toggleLayerFold() {
    state.isLayerFold = !state.isLayerFold;
  }

  void toBackPage(index) {
    changePage(index);
  }
}
