import 'package:get/get.dart';

class ApplicationState {
  // 当前 tab 页码
  final _page = 0.obs;
  final _isLayerFold = false.obs;
  set page(value) => this._page.value = value;
  get page => this._page.value;
  set isLayerFold(value) => this._isLayerFold.value = value;
  get isLayerFold => this._isLayerFold.value;
}
