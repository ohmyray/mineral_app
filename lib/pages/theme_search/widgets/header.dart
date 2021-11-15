import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mineral_app/common/routes/routes.dart';
import 'package:mineral_app/database/model/kcl/ks.dart';

import '../index.dart';
import 'container.dart';

/// hello
class HeaderWidget extends GetView<ThemeSearchController> {
  final itemList = [
    {
      'label': '矿区名称',
      'column': 'KQMC',
    },
    {
      'label': '矿种',
      'column': 'KSMC',
    },
    {
      'label': '利用',
      'column': 'KCL_CXH',
    },
    {
      'label': '储量规模',
      'column': 'KCL_DZTJ',
    },
    {
      'label': '行政区划',
      'column': 'BZD',
    }
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
                    // 搜索框
                    onChanged: (value) {
                      print('CupertinoSearchTextField: $value');
                      controller.handleSearch(value);
                    },
                    onSubmitted: (value) {
                      print('CupertinoSearchTextField: $value');
                      controller.handleSearch(value);
                    },
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      // 分类按钮
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: itemList
                          .map((item) => GestureDetector(
                                child: buildTabbarItem(
                                    item, controller.state.tabbarActive),
                                onTap: () {
                                  controller.state.tabbarActive =
                                      item['column'];
                                  controller
                                      .handleSearch(controller.state.searchKey);
                                },
                              ))
                          .toList(),
                    ),
                  ),
                  Expanded(
                      // 搜索结果展示
                      child: GetBuilder<ThemeSearchController>(
                    builder: (_) => ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: _.state.searchKclks.length,
                      itemExtent: 50.0,
                      itemBuilder: (BuildContext context, int index) {
                        print(
                            'controller.state.searchKclks.length${_.state.searchKclks.length}');
                        return ListTile(
                          title: Text(
                              "${(_.state.searchKclks[index] as ItemCard).title}"),
                          subtitle: Text(
                              "${(_.state.searchKclks[index] as ItemCard).ms}"),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          leading: Text(
                            "${index + 1}",
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          // selected: true,
                          onTap: () {
                            // do something
                            print('onTap$index');
                            Get.toNamed(AppRoutes.Mineral_Info, parameters: {
                              "name": _.state.tabbarActive,
                              "select": _.state.searchKclks[index]
                            });
                          },
                        );
                      },
                    ),
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
