import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mineral_app/database/model/xzq.dart';
import 'package:mineral_app/database/provider/cljsfw_provider.dart';
import 'package:mineral_app/database/provider/kqzxd_provider.dart';
import 'package:mineral_app/database/provider/xzq_provider.dart';

class MineralinfoState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;

  var _configs = [].obs;
  set configs(value) => _configs.value = value;
  get configs => _configs.value;

  // db
  XzqDbProvider xzqDbProvider = XzqDbProvider();
  var _xzqData = Rx<XzqModel>(null);
  set xzqData(value) => _xzqData.value = value;
  get xzqData => _xzqData.value;
  var xzqDataWidget = [];
  KqzxdDbProvider kqzxdDbProvider = KqzxdDbProvider();
  CljsfwDbProvider cljsfwDbProvider = CljsfwDbProvider();
}
