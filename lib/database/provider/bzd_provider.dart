import 'dart:developer';

import '/database/model/bzd.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class BzdDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'BZD';

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
  Future<BzdModel> getByBsmId(int bsmId) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, bsmId);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return BzdModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<BzdModel>> getAllData() async {
    Database db = await getDataBase();
    List<BzdModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(BzdModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  /// 获取模糊搜索某列数据
  Future<List<BzdModel>> getDataByColAndVal(String column, val) async {
    Database db = await getDataBase();
    List<BzdModel> _list = [];
    List<Map<String, dynamic>> maps = await db
        .rawQuery("SELECT * FROM Companies WHERE $column LIKE '%$val%'");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(BzdModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  Future<List<BzdModel>> getDataInCXQVal(String val) async {
    Database db = await getDataBase();
    List<BzdModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery(
        "SELECT * FROM BZD WHERE XZQDM IN (SELECT XZQDM FROM XZQ WHERE XZQMC LIKE '%$val%')");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(BzdModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  ///获取事件数据
  Future<BzdModel> getColByVal(String col, val) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from $name where $col = '$val'");
    if (maps.isNotEmpty) {
      return BzdModel.fromMap(maps[0]);
    }
    return null;
  }
}
