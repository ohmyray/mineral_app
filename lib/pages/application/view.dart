import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:latlong2/latlong.dart';
import 'package:mineral_app/common/services/global.dart';
import 'package:mineral_app/common/style/color.dart';
import 'package:mineral_app/pages/map/index.dart';
import '/common/routes/routes.dart';
import '/common/widgets/card.dart';
import '/common/values/values.dart';
import '/common/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'custom_bottom_nav_bar.dart';
import 'index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  GlobalService global = Get.find<GlobalService>();
  AMapController aMapController = Get.find<AMapController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(() => Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: _buildAppBar(),
        floatingActionButton: buildSpeedDial(controller, global),
        bottomNavigationBar: CustomBottomNavigationBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          itemColor: context.theme.colorScheme.secondary,
          // currentIndex: controller.currentIndex.value,
          currentIndex: controller.state.page,
          onChange: (index) {
            controller.changePage(index);
          },
          children: [
            CustomBottomNavigationItem(
              icon: Icons.home_outlined,
              label: "一张图".tr,
            ),
            CustomBottomNavigationItem(
              icon: Icons.chat_outlined,
              label: "统计".tr,
            ),
            CustomBottomNavigationItem(
              icon: Icons.assignment_outlined,
              label: "分析".tr,
            ),
            // CustomBottomNavigationItem(
            //   icon: Icons.person_outline,
            //   label: "Account".tr,
            // ),
          ],
        ),
        body: IndexedStack(
          index: controller.state.page,
          children: [
            buildFlutterMap(global, controller, size, aMapController),
            Container(
              child: Text('1'),
            ),
            Container(
              child: Text('2'),
            ),
          ],
          // bottomNavigationBar: _buildBottomNavigationBar(),
        )));
  }
}

Widget buildFlutterMap(GlobalService global, ApplicationController controller,
    Size size, AMapController aMapController) {
  return Stack(children: [
    FlutterMap(
      options: MapOptions(
          center: global.currentLocation,
          zoom: 15.0,
          onTap: (tapPosition, point) {
            print('$tapPosition,$point');
            print('$controller.state.point,$point');
          },
          plugins: [],
          onMapCreated: (mapController) async {
            // controller.state.mapController = mapController;
          }),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
              point: global.currentLocation,
              builder: (ctx) => const Icon(
                Icons.location_on,
                color: Colors.red,
                size: 40.0,
              ),
            ),
            ...aMapController.state.bzdListMarker
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
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
      child: Column(
        children: [
          Card(
            child: Container(
              height: 60,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: const Icon(Icons.search, color: MyColors.grey_60),
                      onPressed: () {}),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration.collapsed(hintText: '搜索矿区'),
                      controller: controller.searchController,
                      onSubmitted: (value) {
                        print('开始搜索');
                      },
                    ),
                  ),
                  Text('当前矿区'),
                  PopupMenuButton<String>(
                    // key: _menuKey,
                    icon: const Icon(Icons.outlined_flag,
                        color: MyColors.grey_60),
                    onSelected: (String value) {
                      // showToastClicked(context, value);
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: "Search",
                        child: Text("Search"),
                      ),
                      PopupMenuItem(
                        value: "Refresh",
                        child: Text("Refresh"),
                      ),
                      PopupMenuItem(
                        value: "Settings",
                        child: Text("Settings"),
                      ),
                      PopupMenuItem(
                        value: "Send feedback",
                        child: Text("Send feedback"),
                      ),
                      PopupMenuItem(
                        value: "Help",
                        child: Text("Help"),
                      ),
                      PopupMenuItem(
                        value: "Signout",
                        child: Text("Signout"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ...buildLayersCard(controller.state.isLayerFold),
              Card(
                child: IconButton(
                    onPressed: () => controller.toggleLayerFold(),
                    icon: Icon(Icons.layers_outlined)),
              )
            ],
          )
        ],
      ),
    )
  ]);
}

List<Widget> buildLayersCard(layerFold) {
  if (layerFold) {
    return [
      Card(child: IconButton(icon: Icon(Icons.map_outlined))),
      Card(child: IconButton(icon: Icon(Icons.maps_home_work_outlined))),
    ];
  } else {
    return [];
  }
}

Widget buildSpeedDial(ApplicationController controller, GlobalService global) {
  if (controller.state.page == 0) {
    return SpeedDial(
      elevation: 2,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(color: Colors.white),
      curve: Curves.linear,
      animationSpeed: 100,
      overlayColor: Colors.black,
      overlayOpacity: 0.2,
      backgroundColor: MyColors.primary,
      children: [
        SpeedDialChild(
          elevation: 2,
          label: "空间分析",
          child: Icon(Icons.space_bar_outlined, color: MyColors.grey_80),
          backgroundColor: Colors.white,
          onTap: () {
            controller.changePage(2);
            global.backPage = 0;
          },
        ),
        SpeedDialChild(
          elevation: 2,
          label: "资源统计",
          child: Icon(Icons.summarize_outlined, color: MyColors.grey_80),
          backgroundColor: Colors.white,
          onTap: () {
            controller.changePage(1);
            global.backPage = 0;
          },
        ),
        SpeedDialChild(
          elevation: 2,
          label: "详细信息",
          child: Icon(Icons.all_inbox_outlined, color: MyColors.grey_80),
          backgroundColor: Colors.white,
          onTap: () {},
        ),
        SpeedDialChild(
          elevation: 2,
          label: "基本信息",
          child: Icon(Icons.info_outline, color: MyColors.grey_80),
          backgroundColor: Colors.white,
          onTap: () {},
        ),
      ],
    );
  }
}
