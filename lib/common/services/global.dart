import 'package:get/get.dart';
import 'package:mineral_app/common/utils/helper.dart';

class GlobalService extends GetxService {
  final global = {}.obs;

  Future<GlobalService> init() async {
    var response = await Helper.getJsonFile('assets/dbfile/mapper.json');
    global.value = response;
    return this;
  }
}
