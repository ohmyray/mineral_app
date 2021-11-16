import 'package:get/get.dart';

class InfoState {
  // title
  final _title = "info".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
