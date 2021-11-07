import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_logic.dart';
import 'register_state.dart';

/// @description:
/// @author 
/// @date: 2021/11/07 09:12:47
class RegisterPage extends StatelessWidget {
  final RegisterLogic logic = Get.put(RegisterLogic());
  final RegisterState state = Get.find<RegisterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
