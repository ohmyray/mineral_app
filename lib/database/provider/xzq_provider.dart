import 'dart:developer';

import '/database/model/xzq.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class XzqDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'XZQ';

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
  Future<XzqModel> getByBsmId(int bsmId) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, bsmId);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return XzqModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<XzqModel>> getAllData() async {
    Database db = await getDataBase();
    List<XzqModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(XzqModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  ///获取事件数据
  Future<XzqModel> getRowByVal(String row, val) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from $name where $row = $val");
    if (maps.isNotEmpty) {
      return XzqModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取事件数据
  Future<XzqModel> getRowByKqbh(String val) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM XZQ WHERE XZQDM IN (SELECT XZQDM FROM BZD WHERE KQBH = '$val')");
    if (maps.isNotEmpty) {
      return XzqModel.fromMap(maps[0]);
    }
    return null;
  }
}
