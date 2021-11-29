import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/common/services/global.dart';

Widget buildCategory() {
  GlobalService global = Get.find<GlobalService>();
  return Scaffold(
    appBar: backAppBar(global),
    body: IndexedStack(
      children: [
        Container(
          color: Colors.red,
          child: Center(
            child: Text('统计'),
          ),
        )
      ],
    ),
  );
}

Widget backAppBar(GlobalService global) {
  if (global.backPage != -1) {
    return AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)));
  }
  return null;
}
