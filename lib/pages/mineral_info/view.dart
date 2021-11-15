import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class MineralInfoPage extends GetView<MineralInfoController> {
  const MineralInfoPage({Key key}) : super(key: key);

  // 内容页
  Widget _buildView() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: HelloWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var data = Get.parameters;
    return Scaffold(
      body: _buildView(),
    );
  }
}
