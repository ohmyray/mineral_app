import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '/database/provider/klc/cxh_provider.dart';
import '/database/provider/klc/dztj_provider.dart';
import '/database/provider/kqzxd_provider.dart';
import '/database/provider/tkq_provider.dart';
import '/pages/theme_search/widgets/widgets.dart';

import '/database/model/kcl/ks.dart';
import '/database/provider/klc/kc_provider.dart';

class ThemeSearchState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;

  RxString _tabbarActive = 'KQMC'.obs;

  set tabbarActive(value) => _tabbarActive.value = value;
  get tabbarActive => _tabbarActive.value;

  var searchKclks = [];
  // final _searchKclks = RxList<dynamic>([]);
  final Rx<bool> _isSearching = Rx<bool>(false);

  // set searchKclks(value) => _searchKclks.value = value;
  // get searchKclks => _searchKclks.value;
  set isSearching(value) => _isSearching.value = value;
  get isSearching => _isSearching.value;

  KclKsDbProvider kclKsProvider = KclKsDbProvider();
  KqzxdDbProvider kqzxdDbProvider = KqzxdDbProvider(); //矿区名称
  TkqDbProvider tkqDbProvider = TkqDbProvider(); //矿种类型
  KclCxhDbProvider kclCxhDbProvider = KclCxhDbProvider(); //利用类型
  KclDztjDbProvider kclDztjDbProvider = KclDztjDbProvider(); //储量规模
}
