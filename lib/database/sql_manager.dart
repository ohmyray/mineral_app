import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

import 'package:path/path.dart';

class SqlManager {
  static const _VERSION = 1;

  static const _NAME = "resources.db";

  static Database _database;

  ///初始化
  static init() async {
    var databasesPath = await getDatabasesPath();

    String path = join(databasesPath, _NAME);

    // delete existing if any
    await deleteDatabase(path);

    // Make sure the parent directory exists
    try {
      await Directory(dirname(path)).create(recursive: true);
    } catch (_) {}

    // Copy from asset
    // var data = await rootBundle.load(join('assets/dbfile/test.db'));
    var data = await rootBundle.load(join('assets', 'dbfile', _NAME));

    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    // Write and flush the bytes written
    await File(path).writeAsBytes(bytes, flush: true);

    _database = await openDatabase(path,
        version: _VERSION, onCreate: (Database db, int version) async {});
  }

  ///判断表是否存在
  static isTableExits(String tableName) async {
    await getCurrentDatabase();
    var res = await _database.rawQuery(
        "select * from Sqlite_master where type = 'table' and name = '$tableName'");
    // return res != null && res.length > 0;
    return res != null && res.length != 0;
  }

  ///获取当前数据库对象
  static Future<Database> getCurrentDatabase() async {
    if (_database == null) {
      await init();
    }
    return _database;
  }

  ///关闭
  static close() {
    _database?.close();
    _database = null;
  }
}
