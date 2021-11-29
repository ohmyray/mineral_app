import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mineral_app/common/services/global.dart';
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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(() => Scaffold(
        // appBar: _buildAppBar(),
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
              icon: Icons.assignment_outlined,
              label: "分析".tr,
            ),
            CustomBottomNavigationItem(
              icon: Icons.chat_outlined,
              label: "统计".tr,
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
            buildFlutterMap(global, controller),
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

Widget buildFlutterMap(global, controller) {
  return FlutterMap(
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
          // ...controller.state.bzdListMarker
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
  );
}
