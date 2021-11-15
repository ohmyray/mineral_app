import 'dart:developer';

import '/database/model/clgst.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class ClgstDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'CLGST';

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
  Future<ClgstModel> getByBsmId(int bsmId) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, bsmId);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return ClgstModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<ClgstModel>> getAllData() async {
    Database db = await getDataBase();
    List<ClgstModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(ClgstModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  ///获取事件数据
  Future<ClgstModel> getColByVal(String col, val) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from $name where $col = '$val'");
    if (maps.isNotEmpty) {
      return ClgstModel.fromMap(maps[0]);
    }
    return null;
  }
}
