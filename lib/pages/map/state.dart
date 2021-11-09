import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class AMapState {
  // 当前 tab 页码
  final _page = 0.obs;
  final _point = LatLng(51.5, -0.09).obs;

  get point => this._point.value;
  set point(value) => this._point.value = value;
  set page(value) => this._page.value = value;
  get page => this._page.value;
}
