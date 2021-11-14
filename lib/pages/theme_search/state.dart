import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '/pages/theme_search/widgets/widgets.dart';

import '/database/model/kcl/ks.dart';
import '/database/provider/klc/kc_provider.dart';

class ThemeSearchState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;

  RxString _tabbarActive = 'KSMC'.obs;

  set tabbarActive(value) => _tabbarActive.value = value;
  get tabbarActive => _tabbarActive.value;

  final _searchKclks = RxList<KclKsModel>([]);
  final Rx<bool> _isSearching = Rx<bool>(false);

  set searchKclks(value) => _searchKclks.value = value;
  get searchKclks => _searchKclks.value;
  set isSearching(value) => _isSearching.value = value;
  get isSearching => _isSearching.value;

  KclKsProvider kclKsProvider = KclKsProvider();
}
