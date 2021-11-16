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

  static Future<List> queryKqbh(id) async {
    XzqDbProvider xzqDbProvider = XzqDbProvider();
    KqzxdDbProvider kqzxdDbProvider = KqzxdDbProvider();
    CljsfwDbProvider cljsfwDbProvider = CljsfwDbProvider();
    BzdDbProvider bzdfwDbProvider = BzdDbProvider();
    TkqDbProvider tkqDbProvider = TkqDbProvider();
    CkqDbProvider ckqDbProvider = CkqDbProvider();
    ClgstDbProvider clgstDbProvider = ClgstDbProvider();

    var _list = [];
    var xzqModel = await xzqDbProvider.getRowByKqbh(id);
    _list.add(xzqModel);
    var kqzxdModel = await kqzxdDbProvider.getColByVal('KQBH', id);
    _list.add(kqzxdModel);
    return _list;
  }
}
