import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_nav/bottom_navigation_bar.dart';

import 'root_logic.dart';
import 'root_state.dart';

class RootPage extends StatelessWidget {
  final RootLogic logic = Get.put(RootLogic());
  final RootState state = Get.find<RootLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: logic.currentPage,
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: state.currentPageIndex.value,
            onChange: (index) {
              print('切换导航栏$index');
              logic.changePage(index);
            },
            children: [
              CustomBottomNavigationItem(
                icon: Icons.home_outlined,
                label: "主页".tr,
              ),
              CustomBottomNavigationItem(
                icon: Icons.map_outlined,
                label: "一张图".tr,
              ),
              CustomBottomNavigationItem(
                icon: Icons.settings_outlined,
                label: "设置".tr,
              ),
            ],
          ),
        ));
  }
}
