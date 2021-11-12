import 'dart:developer';

import '/database/model/ckq.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class CkqDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'CKQ';

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
  Future<CkqModel> getByBsmId(int bsmId) async {
    Database db = await getDataBase();
    List<Map<String, dynamic>> maps = await _getProvider(db, bsmId);
    // List<Map<String, dynamic>> maps = await _getBzdProvider(db, bsmId);
    if (maps.isNotEmpty) {
      return CkqModel.fromMap(maps[0]);
    }
    return null;
  }

  ///获取所有数据
  Future<List<CkqModel>> getAllData() async {
    Database db = await getDataBase();
    List<CkqModel> _list = [];
    List<Map<String, dynamic>> maps = await db.rawQuery("select * from $name ");
    if (maps.isNotEmpty) {
      for (var item in maps) {
        _list.add(CkqModel.fromMap(item));
      }
      return _list;
    }
    return null;
  }
}
