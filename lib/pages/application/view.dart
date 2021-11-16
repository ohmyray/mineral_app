import 'package:flutter/material.dart';
import '/common/routes/routes.dart';
import '/common/widgets/card.dart';
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
  Widget _buildPageView(Size size) {
    // return ListView(
    //   physics: NeverScrollableScrollPhysics(),
    //   children: <Widget>[
    //     GestureDetector(
    //       onTap: () {
    //         print('资源一张图');
    //         controller.toNamed(AppRoutes.Map);
    //       },
    //       child: cardWidget('资源一张图', 100, 100),
    //     ),
    //     GestureDetector(
    //       onTap: () {
    //         print('专题查询');
    //         controller.toNamed(AppRoutes.Theme_Search);
    //       },
    //       child: cardWidget('专题查询', 100, 100),
    //     ),
    //     GestureDetector(
    //       onTap: () {
    //         print('分类统计');
    //       },
    //       child: cardWidget('分类统计', 100, 100),
    //     ),
    //     GestureDetector(
    //       onTap: () {
    //         print('空间分析');
    //       },
    //       child: cardWidget('空间分析', 100, 100),
    //     ),
    //   ],
    //   // controller: controller.pageController,
    //   // onPageChanged: controller.handlePageChanged,
    // );
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 24),
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            color: AppColors.purple,
          ),
          child: SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/logo.png'),
                      const SizedBox(width: 16),
                      const Text(
                        'MINERAL',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  const Text('矿产资源',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white))
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            height: size.height - size.height / 5,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(34)),
            child: Column(
              children: [
                Row(
                  children: const [
                    // Text('资源一张图'),
                    SizedBox(width: 34),
                    // Text('专题查询'),
                    SizedBox(width: 34),
                    // Text('分类统计'),
                    SizedBox(width: 34),
                    // Text('空间分析'),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.toNamed(AppRoutes.Map);
                                },
                                child: shortCardButton(
                                    Colors.teal, '资源一张图', Icons.map_rounded),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.toNamed(AppRoutes.Theme_Search);
                                },
                                child: shortCardButton(
                                    Colors.deepOrange, '专题查询', Icons.three_mp),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: shortCardButton(
                                    Colors.amber, '分类统计', Icons.book_rounded),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: shortCardButton(Colors.redAccent, '空间分析',
                                    Icons.analytics_rounded),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: _buildAppBar(),
      body: _buildPageView(size),
      // bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}

Widget shortCardButton(color, title, icon) {
  return Container(
    width: 145,
    height: 196,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white, width: 10),
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: const Color(0xFF0B0C2A).withOpacity(.09),
            offset: const Offset(10, 10),
          )
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        Expanded(
            child: Icon(
          icon,
          size: 54,
          color: Colors.white,
        ))
      ],
    ),
  );
}

Widget longCardButton(color, title) {
  return Container(
    width: 155,
    height: 163,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white, width: 10),
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: const Color(0xFF0B0C2A).withOpacity(.09),
            offset: const Offset(10, 10),
          )
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        const Expanded(
            child: Icon(
          Icons.map_rounded,
          size: 54,
          color: Colors.white,
        ))
      ],
    ),
  );
}
