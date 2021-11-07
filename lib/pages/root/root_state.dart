import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/pages/map/map_view.dart';

/// @description:
/// @author
/// @date: 2021/11/07 12:02:13
class RootState {
  ///选择index - 响应式
  RxInt currentPageIndex;
  List<Widget> pages = [
    MapPage(),
  ];
  RootState() {
    ///Initialize variables
    currentPageIndex = 0.obs;
  }
}
