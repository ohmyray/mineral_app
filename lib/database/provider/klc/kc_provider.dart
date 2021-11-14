import 'dart:developer';

import '/database/model/kcl/ks.dart';
import 'package:sqflite/sqlite_api.dart';

import '../../sql_provider.dart';

class KclKsProvider extends BaseDbProvider {
  ///表名
  final String name = 'KCL_KS';

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
  Future<KclKsModel> getById(String id) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, id);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return KclKsModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<KclKsModel>> getAllData() async {
    Database db = await getDataBase();
    List<KclKsModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(KclKsModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }

  /// 获取模糊搜索某列数据
  Future<List<KclKsModel>> getDataByColAndVal(String column, val) async {
    Database db = await getDataBase();
    List<KclKsModel> _list = [];
    List<Map<String, dynamic>> maps = await db
        .rawQuery("SELECT * FROM Companies WHERE $column LIKE '%$val%'");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(KclKsModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }
}
