import 'package:get/get.dart';

import '/database/model/kcl/ks.dart';
import '/database/provider/klc/kc_provider.dart';

class ThemeSearchState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;

  final _searchKclks = RxList<KclKsModel>([]);
  final Rx<bool> _isSearching = Rx<bool>(false);

  set searchKclks(value) => _searchKclks.value = value;
  get searchKclks => _searchKclks.value;
  set isSearching(value) => _isSearching.value = value;
  get isSearching => _isSearching.value;

  KclKsProvider kclKsProvider = KclKsProvider();
}
