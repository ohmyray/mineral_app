import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class InfoPage extends GetView<InfoController> {
  const InfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((state) => Center(
            child: Text('$state'),
          )),
    );
  }
}
