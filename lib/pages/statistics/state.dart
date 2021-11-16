import 'package:get/get.dart';

class StatisticsState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
