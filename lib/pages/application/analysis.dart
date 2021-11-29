import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/common/services/global.dart';
import 'index.dart';

Widget buildAnalysis() {
  GlobalService global = Get.find<GlobalService>();
  ApplicationController applicationController =
      Get.find<ApplicationController>();
  return Scaffold(
    appBar: backAppBar(global, applicationController),
    body: IndexedStack(
      children: [
        Container(
          color: Colors.red,
          child: Center(
            child: Text('分析'),
          ),
        )
      ],
    ),
  );
}

Widget backAppBar(GlobalService global, ApplicationController application) {
  if (global.backPage != -1) {
    return AppBar(
        title: Text('空间分析'),
        leading: IconButton(
            onPressed: () {
              application.toBackPage(global.backPage);
            },
            icon: const Icon(Icons.arrow_back)));
  }
  return null;
}
