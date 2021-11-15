import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import '../index.dart';
import 'build_table.dart';

/// hello
class HelloWidget extends GetView<MineralInfoController> {
  const HelloWidget({Key key}) : super(key: key);
  final configPath = 'assets/dbfile/mapper.json';
  @override
  Widget build(BuildContext context) {
    var data = Get.parameters;
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(configPath),
      builder: (context, snapshot) {
        var mydata = json.decode(snapshot.data.toString());
        controller.state.configs = mydata;
        print(mydata);
        // return Obx(() => ListView.builder(
        //       itemBuilder: (BuildContext context, int index) {
        //         // Map data = new Map<String, String>.from(mydata[index]["columns"]);
        //         // Map table = new Map<String, String>.from(mydata[index]["table"]);
        //         // data.forEach((item, index) => {print('$item $index')});
        //         return Card(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: <Widget>[
        //               Text(mydata[index]["zh"]), // 标题
        //               buildColum(mydata[index]["table"],
        //                   mydata[index]['columns'], controller)
        //             ],
        //           ),
        //         );
        //       },
        //       itemCount: controller.state.configs == null
        //           ? 0
        //           : controller.state.configs.length,
        //     ));
        return SafeArea(
            child: Obx(() => Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    // Map data = new Map<String, String>.from(mydata[index]["columns"]);
                    // Map table = new Map<String, String>.from(mydata[index]["table"]);
                    // data.forEach((item, index) => {print('$item $index')});
                    var _listWidget = controller.state.xzqDataWidget
                        .asMap()
                        .keys
                        .map((index) {
                      print('object${controller.state.xzqDataWidget[index]}');
                      return buildTableView(
                          controller.state.xzqDataWidget[index]['key'],
                          controller.state.xzqDataWidget[index]['value']);
                    }).toList();
                    print('object$_listWidget');
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            mydata[index]["zh"],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ), // 标题
                          buildColum(mydata[index]["table"],
                              mydata[index]['columns'], controller),
                          ..._listWidget
                        ],
                        // children: controller.state.xzqDataWidget,
                      ),
                    );
                  },
                  itemCount: controller.state.configs == null
                      ? 0
                      : controller.state.configs.length,
                ))));
      },
    );
  }
}

Widget buildColum(type, data, MineralInfoController controller) {
  controller.getTableDates(type, data);
  return Container(
    height: 5,
    width: 5,
    child: ListView(
      // children: controller.state.xzqDataWidget.toList(),
      children: [Text('')],
    ),
  );
}
