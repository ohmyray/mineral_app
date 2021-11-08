import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/common/widgets/home_search_bar_widget.dart';

import 'home_logic.dart';
import 'home_state.dart';

class HomePage extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "AAAAAA",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (_, i) {
                    return Row(
                      children: [
                        Container(
                          width: 200,
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5, 5),
                                  color: Colors.grey,
                                ),
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(-5, -5),
                                  color: Colors.grey,
                                )
                              ]),
                          child: Center(child: Text('glues')),
                        )
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
