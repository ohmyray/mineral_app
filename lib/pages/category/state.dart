import 'package:get/get.dart';

class CategoryState {
  // title
  final _title = "category".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
