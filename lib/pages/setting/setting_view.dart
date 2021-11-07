import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'setting_logic.dart';
import 'setting_state.dart';

/// @description:
/// @author 
/// @date: 2021/11/07 12:15:06
class settingPage extends StatelessWidget {
  final settingLogic logic = Get.put(settingLogic());
  final settingState state = Get.find<settingLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
