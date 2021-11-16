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
                    print('$key, $value');
                    print(gobalServeice.global[key]);
                    _list.add(buildTableView(gobalServeice.global[key], value));
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
                } else {}
                print('state[index] is XzqModel,${state[index] is XzqModel}');
                return Text('${state[index]}');
              },
            ),
          )),
    );
  }
}
