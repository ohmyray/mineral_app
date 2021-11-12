import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:mineral_app/database/model/bzd.dart';
import '/common/routes/routes.dart';
import '/common/utils/utils.dart';
import '/common/values/values.dart';
import 'package:get/get.dart';

import 'index.dart';

class AMapController extends GetxController {
  /// 响应式成员变量

  final state = AMapState();

  /// 生命周期

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void toNamed(String routeName) {
    Get.toNamed(routeName);
  }

  List<Marker> buildBzdMarker(List<BzdModel> bzds) {
    List<Marker> _list = [];
    for (var column in bzds) {
      state.bzdMarkerPoints.add(LatLng(column.YZB, column.XZB));
    }
    for (var i = 0; i < state.bzdMarkerPoints.length; i++) {
      _list.add(Marker(
        point: state.bzdMarkerPoints[i],
        width: 80.0,
        height: 80.0,
        builder: (ctx) => const Icon(
          Icons.tour,
          color: Colors.red,
          size: 50.0,
        ),
      ));
    }
    return _list;
  }
}
