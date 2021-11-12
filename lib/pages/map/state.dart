import 'package:flutter_map/plugin_api.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '/database/provider/bzd_provider.dart';

class AMapState {
  // 当前 tab 页码
  final _page = 0.obs;
  final _point = LatLng(51.5, -0.09).obs;
  BzdDbProvider bzdProvider = BzdDbProvider();
  MapController _mapController;

  RxList bzdMarkerPoints = [].obs;

  get point => this._point.value;
  set point(value) => this._point.value = value;
  set page(value) => this._page.value = value;
  get page => this._page.value;
  get mapController => _mapController;
  set mapController(value) => _mapController = value;
}
