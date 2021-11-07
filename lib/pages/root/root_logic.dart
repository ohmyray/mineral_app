import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'root_state.dart';

/// @description:
/// @author
/// @date: 2021/11/07 12:02:13
class RootLogic extends GetxController {
  final state = RootState();

  Future<void> changePageInRoot(int _index) async {
    state.currentPageIndex.value = _index;
  }

  Future<void> changePage(int index) async {
    await changePageInRoot(index);
  }

  Widget get currentPage => state.pages[state.currentPageIndex.value];
}
