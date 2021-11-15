import 'dart:developer';

import '/database/model/tkq.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class TkqDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'TKQ';

  final String columnId = "KZMC";

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
  Future<TkqModel> getByBsmId(int bsmId) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, bsmId);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return TkqModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<TkqModel>> getAllData() async {
    Database db = await getDataBase();
    List<TkqModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(TkqModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  /// 获取模糊搜索某列数据
  Future<List<TkqModel>> getDataByColAndVal(String column, val) async {
    Database db = await getDataBase();
    List<TkqModel> _list = [];
    print("SELECT * FROM  $name WHERE $column LIKE '%$val%'");
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM  $name WHERE $column LIKE '%$val%'");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(TkqModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  ///获取事件数据
  Future<TkqModel> getColByVal(String col, val) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from $name where $col = '$val'");
    if (maps.isNotEmpty) {
      return TkqModel.fromMap(maps[0]);
    }
    return null;
  }
}
