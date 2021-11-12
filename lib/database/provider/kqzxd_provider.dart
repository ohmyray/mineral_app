import 'dart:developer';

import '/database/model/kqzxd.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class KqzxdDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'KQZXD';

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
  Future<KqzxdModel> getByBsmId(int bsmId) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, bsmId);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return KqzxdModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<KqzxdModel>> getAllData() async {
    Database db = await getDataBase();
    List<KqzxdModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(KqzxdModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }
}
