import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';

import '/database/model/bzd.dart';

import 'index.dart';

class AMapPage extends GetView<AMapController> {
  List<Marker> _bzdList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                    // if (bzds.isNotEmpty) {
                    //   _bzdList = controller.buildBzdMarker(bzds);
                    //   print(_bzdList.length);
                    // }
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 34.0, horizontal: 16.0),
              child: Column(
                children: [
                  Card(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
