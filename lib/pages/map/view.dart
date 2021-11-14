import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:mineral_app/common/widgets/widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '/database/model/bzd.dart';

import 'index.dart';

class AMapPage extends GetView<AMapController> {
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.035;
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      body: SlidingUpPanel(
        body: Obx(
          () => Stack(
            children: [
              FlutterMap(
                options: MapOptions(
                    center: LatLng(23.845742, 111.489864),
                    zoom: 5.0,
                    onTap: (tapPosition, point) {
                      print('$tapPosition,$point');
                      print('$controller.state.point,$point');
                      controller.state.point = point;
                    },
                    plugins: [
                      MarkerClusterPlugin(),
                    ],
                    onMapCreated: (mapController) async {
                      controller.state.mapController = mapController;
                    }),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                    attributionBuilder: (_) {
                      return Text("Mineral");
                    },
                  ),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: controller.state.point,
                        builder: (ctx) => const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40.0,
                        ),
                      ),
                      ...controller.state.bzdListMarker
                    ],
                  ),
                  // MarkerClusterLayerOptions(
                  //   maxClusterRadius: 120,
                  //   size: Size(40, 40),
                  //   fitBoundsOptions: const FitBoundsOptions(
                  //     padding: EdgeInsets.all(50),
                  //   ),
                  //   markers: controller.state.bzdListMarker,
                  //   // polygonOptions: PolygonOptions(
                  //   //     borderColor: Colors.blueAccent,
                  //   //     color: Colors.black12,
                  //   //     borderStrokeWidth: 3),
                  //   builder: (context, markers) {
                  //     return FloatingActionButton(
                  //       child: Text(markers.length.toString()),
                  //       onPressed: null,
                  //     );
                  //   },
                  // ),
                ],
              ),
              buildSearchBar(),
            ],
          ),
        ),
        panelBuilder: (panelBuilderController) =>
            Obx(() => controller.state.currentTapMarker is BzdModel
                ? PanelWidget(
                    controller: panelBuilderController,
                    aMapController: controller,
                  )
                : Container()),
        onPanelSlide: (position) {
          print('onPanelSlide$position ');
        },
        controller: controller.state.panelController,
        minHeight: panelHeightClosed,
        maxHeight: panelHeightOpen,
        parallaxEnabled: true,
        parallaxOffset: .5,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
      ),
    );
  }

  Padding buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  AMapController aMapController;

  PanelWidget({Key key, this.controller, this.aMapController})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: [
          const SizedBox(height: 12),
          builDragHandle(),
          const SizedBox(height: 12),
          buildTitle(aMapController.state.currentTapMarker is BzdModel
              ? (aMapController.state.currentTapMarker as BzdModel).BZDMC
              : '未查询到数据'),
          const SizedBox(height: 12),
          buildAboutText(
            (aMapController.state.currentTapMarker as BzdModel).XZB,
            (aMapController.state.currentTapMarker as BzdModel).YZB,
            (aMapController.state.currentTapMarker as BzdModel).MS,
            (aMapController.state.currentTapMarker as BzdModel).KQBH,
          )
        ],
      );

  Widget builDragHandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        onTap: togglePanel,
      );

  void togglePanel() {
    print(
        'aMapController.state.panelController.isPanelOpen: ${aMapController.state.panelController.isPanelOpen}');
    aMapController.state.panelController.isPanelOpen
        ? aMapController.state.panelController.close()
        : aMapController.state.panelController.open();
  }

  Widget buildTitle(String title) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget buildAboutText(x, y, ms, kqbh) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "矿区坐标:",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Text('''
              X:$x     Y:$y
            '''),
            const Text(
              "矿区描述:",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Text('''
              $ms
            '''),
            const Text(
              "矿区详情:",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              child: Text(
                '''
                查看 $kqbh 矿区详情
                ''',
                style: const TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
              onTap: () {
                print('$kqbh详情==>>>');
              },
            ),
          ],
        ),
      );
}
