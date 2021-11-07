import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/pages/home/home_view.dart';
import '/pages/setting/setting_view.dart';
import '/pages/map/map_view.dart';

/// @description:
/// @author
/// @date: 2021/11/07 12:02:13
class RootState {
  ///选择index - 响应式
  RxInt currentPageIndex;
  List<Widget> pages = [
    HomePage(),
    MapPage(),
    settingPage(),
  ];
  RootState() {
    ///Initialize variables
    currentPageIndex = 0.obs;
  }
}
