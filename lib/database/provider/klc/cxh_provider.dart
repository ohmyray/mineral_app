import 'dart:developer';

import '/database/model/kcl/cxh.dart';
import 'package:sqflite/sqlite_api.dart';

import '../../sql_provider.dart';

class KclCxhDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'KCL_CXH';

  final String columnId = "KQBH";

  @override
  createTableString() {
    return "";
  }

  @override
  tableName() {
    return name;
  }

  ///查询数据库
  Future _getProvider(Database db, String id) async {
    List<Map<String, dynamic>> maps =
        await db.rawQuery("select * from $name where $columnId = $id");
    return maps;
  }

  ///获取事件数据
  Future<KclCxhModel> getById(String id) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, id);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return KclCxhModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<KclCxhModel>> getAllData() async {
    Database db = await getDataBase();
    List<KclCxhModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(KclCxhModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  /// 获取模糊搜索某列数据
  Future<List<KclCxhModel>> getDataByColAndVal(String column, val) async {
    Database db = await getDataBase();
    List<KclCxhModel> _list = [];
    print("SELECT * FROM  $name WHERE $column LIKE '%$val%'");
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM  $name WHERE $column LIKE '%$val%'");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(KclCxhModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }
}
