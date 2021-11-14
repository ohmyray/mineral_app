import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mineral_app/database/model/kcl/ks.dart';

import '../index.dart';
import 'container.dart';

/// hello
class HeaderWidget extends GetView<ThemeSearchController> {
  final itemList = [
    {
      'label': '矿区名称',
      'column': 'KSMC',
    },
    {
      'label': '矿种',
      'column': 'DJFLBH',
    },
    // {
    //   'label': '利用',
    //   'column': 'JJLX',
    // },
    // {
    //   'label': '储量规模',
    //   'column': 'JJLX',
    // },
    // {
    //   'label': '行政区划',
    // }
  ];
  // 内容页
  Widget _buildView() {
    return SafeArea(
        child: Obx(() => Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CupertinoSearchTextField(
                    onChanged: (value) {
                      print('CupertinoSearchTextField: $value');
                      controller.handleSearch(value);
                    },
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: itemList
                          .map((item) => GestureDetector(
                                child: buildTabbarItem(
                                    item, controller.state.tabbarActive),
                                onTap: () {
                                  controller.state.tabbarActive =
                                      item['column'];
                                },
                              ))
                          .toList(),
                    ),
                  ),
                  Expanded(
                      child: ListView(
                    children:
                        (controller.state.searchKclks as List<KclKsModel>) ==
                                null
                            ? [
                                Container(
                                  child: Text('null'),
                                )
                              ]
                            : controller.state.searchKclks
                                .map<Widget>((item) =>
                                    GestureDetector(child: infoCard(item)))
                                .toList(),
                  )),
                ],
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildView(),
    );
  }
}

Widget buildTabbarItem(item, active) {
  return Container(
    padding: const EdgeInsets.only(right: 15.0, left: 15),
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        color: active == item['column'] ? Colors.blueAccent : Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.05),
            blurRadius: 30,
            offset: const Offset(1, 0),
          )
        ]),
    child: Row(
      children: [
        const SizedBox(width: 7),
        Text(
          item['label'],
          style: TextStyle(
            color: active == item['column'] ? Colors.white : Colors.black,
          ),
        ),
      ],
    ),
  );
}
