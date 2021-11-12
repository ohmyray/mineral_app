import 'dart:developer';

import '/database/model/tkq.dart';
import 'package:sqflite/sqlite_api.dart';

import '../sql_provider.dart';

class TkqDbProvider extends BaseDbProvider {
  ///表名
  final String name = 'TKQ';

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
}
