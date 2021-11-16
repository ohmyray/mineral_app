import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mineral_app/database/model/kcl/zycl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '/common/values/values.dart';
import '/common/services/global.dart';

import 'index.dart';

class CategoryPage extends GetView<CategoryController> {
  var gobalServeice = Get.find<GlobalService>();
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.08;
    final panelHeightOpen = MediaQuery.of(context).size.height * 1;
    Size size = MediaQuery.of(context).size;
    var data = Get.arguments;
    String type = data['type'] ?? "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        title: Text(
          "$type",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.backspace,
              color: Colors.white,
            )),
      ),
      body: SlidingUpPanel(
          minHeight: panelHeightClosed,
          maxHeight: panelHeightOpen,
          parallaxEnabled: true,
          parallaxOffset: .5,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          // body: Container(
          //   padding: const EdgeInsets.only(left: 24),
          //   height: size.height,
          //   width: size.width,
          //   decoration: const BoxDecoration(
          //     color: AppColors.purple,
          //   ),
          // ),
          body: controller.obx((state) => Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 120),
                child: Center(
                    child: SfCircularChart(
                  title: ChartTitle(text: "$type"),
                  legend: Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                  ),
                  series: [
                    PieSeries<KclZyclModel, String>(
                      dataSource: controller.kclZycl,
                      xValueMapper: (KclZyclModel data, _) => data.ZYCLLX,
                      yValueMapper: (KclZyclModel data, _) => data.ZYCLLB,
                      dataLabelSettings:
                          const DataLabelSettings(isVisible: true),
                    )
                  ],
                )),
              )),
          panelBuilder: (panelBuilderController) =>
              controller.obx((state) => SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: getColumns(state),
                      rows: getRows(state),
                    ),
                  ))),
    );
  }

  var columns = [
    "KCDM",
    "TJDX",
    "KSLX",
    "KSPJ",
    "ZYCLLB",
    "ZYCLLX",
    "JSL",
    "KSL",
    "KCZHM",
    "KCZH"
  ];
  List<DataColumn> getColumns(List<KclZyclModel> state) => columns
      .map((label) => DataColumn(
              label: Text(
            gobalServeice.global[label] ?? label,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          )))
      .toList();

  List<DataRow> getRows(List<KclZyclModel> state) {
    return state.map((e) {
      final cells = [
        e.KCDM,
        e.TJDX,
        e.KSLX,
        e.KSPJ,
        e.ZYCLLB,
        e.ZYCLLX,
        e.JSL,
        e.KSL,
        e.KCZHM,
        e.KCZH
      ];
      return DataRow(cells: getCells(cells));
    }).toList();
  }

  List<DataCell> getCells(List<dynamic> cells) {
    return cells.map((e) => DataCell(Text('$e'))).toList();
  }
}
