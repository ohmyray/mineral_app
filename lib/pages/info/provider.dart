import 'package:get/get.dart';
import 'package:mineral_app/database/model/model.dart';
import 'package:mineral_app/database/provider/provider.dart';

class InfoProvider extends GetConnect {
  XzqDbProvider xzqDbProvider = XzqDbProvider();
  KqzxdDbProvider kqzxdDbProvider = KqzxdDbProvider();
  CljsfwDbProvider cljsfwDbProvider = CljsfwDbProvider();
  BzdDbProvider bzdfwDbProvider = BzdDbProvider();
  TkqDbProvider tkqDbProvider = TkqDbProvider();
  CkqDbProvider ckqDbProvider = CkqDbProvider();
  ClgstDbProvider clgstDbProvider = ClgstDbProvider();

  static Future<List<XzqModel>> queryBzd() async {
    XzqDbProvider xzqDbProvider = XzqDbProvider();
    var res = await xzqDbProvider.getAllData();
    return res;
  }
}
