import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mineral_app/database/model/xzq.dart';

import 'index.dart';
import 'widgets/build_table.dart';

class MineralInfoController extends GetxController {
  MineralInfoController();

  /// 响应式成员变量

  final state = MineralinfoState();

  /// 成员变量

  /// 事件

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 生命周期

  ///在 widget 内存中分配后立即调用。
  ///你可以用它来为控制器初始化 initialize 一些东西。
  @override
  void onInit() {
    super.onInit();
    // new 对象
    // 初始静态数据
  }

  ///在 onInit() 之后调用 1 帧。这是进入的理想场所
  ///导航事件，例如 snackbar、对话框或新route，或
  ///async 异步请求。
  @override
  void onReady() {
    super.onReady();
    // async 拉取数据
  }

  ///在 [onDelete] 方法之前调用。 [onClose] 可能用于
  ///处理控制器使用的资源。就像 closing events 一样，
  ///或在控制器销毁之前的流。
  ///或者处置可能造成一些内存泄漏的对象，
  ///像 TextEditingControllers、AnimationControllers。
  ///将一些数据保存在磁盘上也可能很有用。
  @override
  void onClose() {
    super.onClose();
    // 1 stop & close 关闭对象
    // 2 save 持久化数据
  }

  ///dispose 释放内存
  @override
  void dispose() {
    super.dispose();
    // dispose 释放对象
  }

  void getTableDates(type, jsonData) async {
    var data = Get.parameters;
    // state.xzqDataWidget.add({"key": 'zh', "value": jsonData['zh']});
    switch (type) {
      case 'XZQ':
        // state.xzqDataWidget.clear();
        var xzqModel = await state.xzqDbProvider.getRowByKqbh(data['select']);
        // state.xzqData = xzqModel;
        xzqModel.toMap().forEach((key, value) {
          state.xzqDataWidget.add({"key": jsonData[key], "value": value});
        });
        break;
      case 'KQZXD':
        // state.kqzxdDataWidget.clear();
        var kqzxdModel =
            await state.kqzxdDbProvider.getColByVal('KQBH', data['select']);
        // state.kqzxdData = kqzxdModel;
        kqzxdModel.toMap().forEach((key, value) {
          state.xzqDataWidget.add({"key": jsonData[key], "value": value});
        });

        break;
      case 'CLJSFW':
        var kqzxdModel =
            await state.cljsfwDbProvider.getColByVal('KQBH', data['select']);
        // state.kqzxdData = kqzxdModel;
        kqzxdModel.toMap().forEach((key, value) {
          state.xzqDataWidget.add({"key": jsonData[key], "value": value});
        });
        break;
      case 'BZD':
        var kqzxdModel =
            await state.bzdfwDbProvider.getColByVal('KQBH', data['select']);
        // state.kqzxdData = kqzxdModel;
        kqzxdModel.toMap().forEach((key, value) {
          state.xzqDataWidget.add({"key": jsonData[key], "value": value});
        });
        break;
      case 'TKQ':
        var kqzxdModel =
            await state.tkqDbProvider.getColByVal('KQBH', data['select']);
        // state.kqzxdData = kqzxdModel;
        kqzxdModel.toMap().forEach((key, value) {
          state.xzqDataWidget.add({"key": jsonData[key], "value": value});
        });
        break;
      case 'CKQ':
        var kqzxdModel =
            await state.ckqDbProvider.getColByVal('KQBH', data['select']);
        // state.kqzxdData = kqzxdModel;
        kqzxdModel.toMap().forEach((key, value) {
          state.xzqDataWidget.add({"key": jsonData[key], "value": value});
        });
        break;
      case 'CLGST':
        var kqzxdModel =
            await state.clgstDbProvider.getColByVal('KQBH', data['select']);
        // state.kqzxdData = kqzxdModel;
        kqzxdModel.toMap().forEach((key, value) {
          state.xzqDataWidget.add({"key": jsonData[key], "value": value});
        });
        break;
      default:
    }

    print(' state.kqzxdDataWidget${state.xzqDataWidget}');
    update();
  }
}
