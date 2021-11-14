import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';
import 'container.dart';

/// hello
class HeaderWidget extends GetView<ThemeSearchController> {
  final itemList = [
    {
      'label': '矿区名称',
      'icon': CupertinoIcons.book,
      'active': true,
    },
    {
      'label': '矿种',
      'icon': CupertinoIcons.book,
      'active': false,
    },
    {
      'label': '利用',
      'icon': CupertinoIcons.book,
      'active': false,
    },
    {
      'label': '储量规模',
      'icon': CupertinoIcons.book,
      'active': false,
    },
    {
      'label': '行政区划',
      'icon': CupertinoIcons.book,
      'active': false,
    },
  ];

  final itemLista = [
    {
      'name': '广州测试矿区1',
      'code': 'sg000003',
      'num': 'sg000003',
      'state': '1',
      'status': '2',
      'user': '@me',
    },
    {
      'name': '广州测试矿区1',
      'code': 'sg000003',
      'num': 'sg000003',
      'state': '1',
      'status': '2',
      'user': '@me',
    },
    {
      'name': '广州测试矿区1',
      'code': 'sg000003',
      'num': 'sg0000031',
      'state': '1',
      'status': '2',
      'user': '@me',
    },
    {
      'name': '广州测试矿区1',
      'code': 'sg000003',
      'num': 'sg000003',
      'state': '1',
      'status': '2',
      'user': '@me',
    },
    {
      'name': '广州测试矿区1',
      'code': 'sg000003',
      'num': 'sg000003',
      'state': '1',
      'status': '2',
      'user': '@me',
    },
    {
      'name': '广州测试矿区1',
      'code': 'sg000003',
      'num': 'sg000003',
      'state': '1',
      'status': '2',
      'user': '@me',
    },
    {
      'name': '广州测试矿区1',
      'code': 'sg000003',
      'num': 'sg000003',
      'state': '1',
      'status': '2',
      'user': '@me',
    },
  ];

  // 内容页
  Widget _buildView() {
    return SafeArea(
        child: Container(
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
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: itemList.map((item) => buildTabbarItem(item)).toList(),
            ),
          ),
          Expanded(
              child: ListView(
                  children: itemLista.map((item) => infoCard(item)).toList())),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildView(),
    );
  }
}

Widget buildTabbarItem(item) {
  return Container(
    padding: const EdgeInsets.only(right: 15.0, left: 15),
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        color: item['active'] ? Colors.blueAccent : Colors.white,
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
        Icon(
          item['icon'],
          color: item['active'] ? Colors.white : Colors.black,
        ),
        const SizedBox(width: 7),
        Text(
          item['label'],
          style: TextStyle(
            color: item['active'] ? Colors.white : Colors.black,
          ),
        ),
      ],
    ),
  );
}
