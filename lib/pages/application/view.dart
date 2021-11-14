import 'package:flutter/material.dart';
import 'package:mineral_app/common/routes/routes.dart';
import 'package:mineral_app/common/widgets/card.dart';
import '/common/values/values.dart';
import '/common/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  // 顶部导航
  // AppBar _buildAppBar() {
  //   return transparentAppBar(
  //       title: Obx(() => Text(
  //             "1231231",
  //             style: TextStyle(
  //               color: AppColors.primaryText,
  //               fontFamily: 'Montserrat',
  //               fontSize: 18.sp,
  //               fontWeight: FontWeight.w600,
  //             ),
  //           )),
  //       actions: <Widget>[
  //         IconButton(
  //           icon: Icon(
  //             Icons.search,
  //             color: AppColors.primaryText,
  //           ),
  //           onPressed: () {},
  //         )
  //       ]);
  // }

  // 内容页
  Widget _buildPageView() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        GestureDetector(
          onTap: () {
            print('资源一张图');
            controller.toNamed(AppRoutes.Map);
          },
          child: cardWidget('资源一张图', 100, 100),
        ),
        GestureDetector(
          onTap: () {
            print('专题查询');
            controller.toNamed(AppRoutes.Theme_Search);
          },
          child: cardWidget('专题查询', 100, 100),
        ),
        GestureDetector(
          onTap: () {
            print('分类统计');
          },
          child: cardWidget('分类统计', 100, 100),
        ),
        GestureDetector(
          onTap: () {
            print('空间分析');
          },
          child: cardWidget('空间分析', 100, 100),
        ),
      ],
      // controller: controller.pageController,
      // onPageChanged: controller.handlePageChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(),
      body: _buildPageView(),
      // bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
