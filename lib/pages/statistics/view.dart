import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class StatisticsPage extends GetView<StatisticsController> {
  const StatisticsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('统计'),
      ),
    );
  }
}
