import 'dart:developer';

import '/database/model/gqtcwd.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class GqtcwdDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'GQTCWD';

  final String columnId = "BSM";

  @override
  createTableString() {
    return "";
  }

  @override
  tableName() {
    return name;
  }

  ///查询数据库
  Future _getProvider(Database db, int bsmId) async {
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from $name where $columnId = $bsmId");
    return maps;
  }

  ///获取事件数据
  Future<GqtcwdModel> getByBsmId(int bsmId) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, bsmId);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return GqtcwdModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<GqtcwdModel>> getAllData() async {
    Database db = await getDataBase();
    List<GqtcwdModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(GqtcwdModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  ///获取事件数据
  Future<GqtcwdModel> getColByVal(String col, val) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from $name where $col = '$val'");
    if (maps.isNotEmpty) {
      return GqtcwdModel.fromMap(maps[0]);
    }
    return null;
  }
}
