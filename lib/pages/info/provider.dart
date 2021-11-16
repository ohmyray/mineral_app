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
    GqtcwdDbProvider gqtcwdDbProvider = GqtcwdDbProvider(); //文档属性(GQTCWD)
    KclKsDbProvider kclKsDbProvider = KclKsDbProvider(); //矿区矿山基本情况(KCL_KS)
    KclZyclDbProvider kclZyclDbProvider = KclZyclDbProvider(); //资源储量(KCL_ZYCL)

    var _list = [];
    var xzqModel = await xzqDbProvider.getRowByKqbh(id);
    _list.add(xzqModel);
    var kqzxdModel = await kqzxdDbProvider.getColByVal('KQBH', id);
    _list.add(kqzxdModel);
    var cljsfwModel = await cljsfwDbProvider.getColByVal('KQBH', id);
    _list.add(cljsfwModel);
    var bzdfwModel = await bzdfwDbProvider.getColByVal('KQBH', id);
    _list.add(bzdfwModel);
    var tkqModel = await tkqDbProvider.getColByVal('KQBH', id);
    _list.add(tkqModel);
    var ckqModel = await ckqDbProvider.getColByVal('KQBH', id);
    _list.add(ckqModel);
    var clgstModel = await clgstDbProvider.getColByVal('KQBH', id);
    _list.add(clgstModel);
    var gqtcwdModel = await gqtcwdDbProvider.getColByVal('KQBH', id);
    _list.add(gqtcwdModel);
    var kclKsModel = await kclKsDbProvider.getColByVal('KQBH', id);
    _list.add(kclKsModel);
    var kclZyclModel = await kclZyclDbProvider.getColByVal('KQBH', id);
    _list.add(kclZyclModel);
    return _list;
  }
}
