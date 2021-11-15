import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mineral_app/database/model/kcl/cxh.dart';
import 'package:mineral_app/database/model/kcl/dztj.dart';
import 'package:mineral_app/database/model/kqzxd.dart';
import 'package:mineral_app/database/model/tkq.dart';

import '/pages/theme_search/widgets/widgets.dart';

import '/database/provider/klc/kc_provider.dart';

import 'index.dart';

class ThemeSearchController extends GetxController {
  ThemeSearchController();

  /// 响应式成员变量

  final state = ThemeSearchState();

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
  void onInit() async {
    super.onInit();
    // new 对象
    // 初始静态数据
    state.searchKclks.clear();
    List<KqzxdModel> _list = await state.kqzxdDbProvider
        .getDataByColAndVal('${state.tabbarActive}', "");
    if (_list.isNotEmpty) {
      for (var node in _list) {
        state.searchKclks
            .add(ItemCard(title: node.KQMC, nd: node.ND, ms: node.MS));
      }
      update();
    }
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

  void handleSearch(String value) async {
    state.searchKclks.clear();
    state.searchKey = value;
    if (state.isSearching == false) {
      print('controller.state.searchKclks,${state.searchKclks}');
      state.isSearching = true;
      // state.searchKclks =
      //     await state.kclKsProvider.getDataByColAndVal("KSMC", "$value");
      switch (state.tabbarActive) {
        case "KQMC": // 矿区名称
          // state.searchKclks

          List<KqzxdModel> _list = await state.kqzxdDbProvider
              .getDataByColAndVal('${state.tabbarActive}', "$value");
          if (_list.isNotEmpty) {
            for (var node in _list) {
              state.searchKclks
                  .add(ItemCard(title: node.KQMC, nd: node.ND, ms: node.MS));
            }
          }
          break;
        case "KSMC": // 矿种查询
          List<TkqModel> _list = await state.tkqDbProvider
              .getDataByColAndVal('${state.tabbarActive}', "$value");
          if (_list.isNotEmpty) {
            for (var node in _list) {
              state.searchKclks
                  .add(ItemCard(title: node.KSMC, nd: node.ND, ms: node.KCDM));
            }
          }

          break;
        case "KCL_CXH": // 利用
          List<KclCxhModel> _list =
              await state.kclCxhDbProvider.getDataByColAndVal('KCFS', "$value");
          if (_list.isNotEmpty) {
            for (var node in _list) {
              state.searchKclks
                  .add(ItemCard(title: node.KCFS, nd: node.ND, ms: node.CKCB));
            }
          }
          break;
        case "KCL_DZTJ": // 储量规模
          List<KclDztjModel> _list = await state.kclDztjDbProvider
              .getDataByColAndVal('ZYCLGM', "$value");
          if (_list.isNotEmpty) {
            for (var node in _list) {
              state.searchKclks.add(
                  ItemCard(title: node.ZYCLGM, nd: node.ND, ms: node.ZKTMC));
            }
          }
          break;
        case "BZD": // 行政区划

          break;
        default:
      }
      state.isSearching = false;
      update();
      print('state.searchKclks${state.searchKclks}');
    }
  }

  handleUpdateActiveType(item) {
    item.active = true;
    // for (var i = 0; i < state.itemList.length; i++) {
    //   var target = state.itemList[i];
    //   if (item.label == target.label) {
    //     target.active = true;
    //   } else {
    //     target.active = false;
    //   }
    // }
    update();
  }
}
