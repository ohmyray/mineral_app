import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/common/services/global.dart';
import '/common/widgets/build_table.dart';

import '/database/model/model.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class InfoPage extends GetView<InfoController> {
  var gobalServeice = Get.find<GlobalService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.backspace)),
      ),
      body: controller.obx((state) => SafeArea(
            child: ListView.builder(
              itemCount: state.length,
              itemBuilder: (_, int index) {
                if (state[index] is XzqModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "行政区属性",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KqzxdModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿区属性结构",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is CljsfwModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿区储量估算范围",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is BzdModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "标志点",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is TkqModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "探矿权",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is CkqModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "采矿权",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is ClgstModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿区图件",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is GqtcwdModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "文档属性",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclKsModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿区矿山基本情况",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclZyclModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "资源储量",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclZbModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "质量属性",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclBgModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿产资源储量评审备案报告",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclDztjModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "地质条件",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclZbModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "坐标属性",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclYfModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "压覆属性",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclCxhModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿山采选环",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclZyclktModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿体资源储量",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclXkModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "选矿信息",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclKcpModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿产品属性",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclZhhsModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "综合回收",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else if (state[index] is KclZlktModel) {
                  List<Widget> _list = [];
                  state[index].toMap().forEach((key, value) {
                    _list.add(buildTableView(
                        gobalServeice.global[key] ?? key, value));
                  });
                  return ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      const Text(
                        "矿体质量",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      ..._list,
                    ],
                  );
                } else {
                  // 错误的话
                  return Text('${state[index]}');
                }
              },
            ),
          )),
    );
  }
}
