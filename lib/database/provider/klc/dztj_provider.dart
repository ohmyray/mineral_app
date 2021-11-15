import 'dart:developer';

import '/database/model/kcl/dztj.dart';
import 'package:sqflite/sqlite_api.dart';

import '../../sql_provider.dart';

class KclDztjDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'KCL_DZTJ';

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
  Future<KclDztjModel> getById(String id) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, id);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return KclDztjModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<KclDztjModel>> getAllData() async {
    Database db = await getDataBase();
    List<KclDztjModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(KclDztjModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  /// 获取模糊搜索某列数据
  Future<List<KclDztjModel>> getDataByColAndVal(String column, val) async {
    Database db = await getDataBase();
    List<KclDztjModel> _list = [];
    print("SELECT * FROM  $name WHERE $column LIKE '%$val%'");
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM  $name WHERE $column LIKE '%$val%'");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(KclDztjModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }
}
