import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mineral_app/common/routes/routes.dart';
import '/common/values/values.dart';

import 'index.dart';

class StatisticsPage extends GetView<StatisticsController> {
  const StatisticsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("资源统计"),
          ),
          body: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  height: size.height - size.height / 5,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(34)),
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 8),
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed(AppRoutes.Category,
                                                arguments: {"type": "估算资源储量"});
                                          },
                                          child: shortCardButton(Colors.teal,
                                              '估算资源储量', Icons.mark_chat_read),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed(AppRoutes.Category,
                                                arguments: {"type": "查明资源储量"});
                                          },
                                          child: shortCardButton(
                                              Colors.deepOrange,
                                              '查明资源储量',
                                              Icons.desktop_mac),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed(AppRoutes.Category,
                                                arguments: {"type": "储量利用类型"});
                                          },
                                          child: shortCardButton(
                                              Colors.amber,
                                              '储量利用类型',
                                              Icons.manage_accounts_rounded),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          )),
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
