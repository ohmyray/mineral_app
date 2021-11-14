import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class ThemeSearchPage extends GetView<ThemeSearchController> {
  const ThemeSearchPage({Key key}) : super(key: key);

  // 内容页
  Widget _buildView() {
    return HeaderWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildView(),
    );
  }
}
