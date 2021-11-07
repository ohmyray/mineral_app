import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'map_logic.dart';
import 'map_state.dart';

/// @description:
/// @author 
/// @date: 2021/11/07 10:04:13
class MapPage extends StatelessWidget {
  final MapLogic logic = Get.put(MapLogic());
  final MapState state = Get.find<MapLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
