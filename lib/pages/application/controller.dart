import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/common/routes/routes.dart';
import '/common/utils/utils.dart';
import '/common/values/values.dart';
import 'package:get/get.dart';

import 'index.dart';

class ApplicationController extends GetxController {
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
  }
}
