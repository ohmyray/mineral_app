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
  void onInit() async {
    super.onInit();
    List<BzdModel> bzds = await state.bzdProvider.getAllData();
    state.bzdListMarker = buildBzdMarker(bzds);
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
      _list.add(Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        point: LatLng(column.YZB, column.XZB),
        width: 80.0,
        height: 80.0,
        builder: (ctx) => IconButton(
            onPressed: () {
              print(column.BSM);
              print(column.KQBH);
            },
            icon: const Icon(
              Icons.tour,
              color: Colors.red,
              size: 50.0,
            )),
      ));
    }
    return _list;
  }
}
