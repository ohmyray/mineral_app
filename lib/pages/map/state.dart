import 'package:flutter_map/plugin_api.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:mineral_app/database/model/kcl/ks.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '/database/model/bzd.dart';

import '/database/provider/klc/kc_provider.dart';
import '/database/provider/bzd_provider.dart';

class AMapState {
  // 当前 tab 页码
  final _page = 0.obs;
  final _point = LatLng(51.5, -0.09).obs;
  BzdDbProvider bzdProvider = BzdDbProvider();
  KclKsDbProvider kclKsProvider = KclKsDbProvider();
  MapController _mapController;
  var _currentTapMarker = Rx<KclKsModel>(null);
  RxList _bzdListMarker = [].obs;
  PanelController panelController = PanelController();
  final RxDouble _offsetDistance = 0.0.obs;
  final RxDouble _offsetY = 0.0.obs;

  get currentTapMarker => _currentTapMarker.value;
  set currentTapMarker(value) => _currentTapMarker.value = value;

  get offsetDistance => _offsetDistance.value;
  set offsetDistance(value) => _offsetDistance.value = value;
  get offsetY => _offsetY.value;
  set offsetY(value) => _offsetY.value = value;

  get bzdListMarker => _bzdListMarker.value;
  set bzdListMarker(value) => _bzdListMarker.value = value;

  get point => this._point.value;
  set point(value) => this._point.value = value;
  set page(value) => this._page.value = value;
  get page => this._page.value;
  get mapController => _mapController;
  set mapController(value) => _mapController = value;
}
