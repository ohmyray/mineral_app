import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/common/widgets/search_bar_widget.dart';

import 'home_logic.dart';
import 'home_state.dart';

class HomePage extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SearchBarWidget(),
      ),
    );
  }
}
