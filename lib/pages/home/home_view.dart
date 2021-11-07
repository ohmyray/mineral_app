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
        body: RefreshIndicator(
      onRefresh: () async {},
      child: CustomScrollView(
        primary: true,
        shrinkWrap: false,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeight: 100,
            elevation: 0.5,
            floating: true,
            iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
            title: Text(
              "App Name".tr,
              style: Get.textTheme.headline6,
            ),
            // title: Text(
            //   Get.find<SettingsService>().setting.value.appName,
            //   style: Get.textTheme.headline6,
            // ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(Icons.sort, color: Colors.black87),
              onPressed: () => {Scaffold.of(context).openDrawer()},
            ),
            // actions: [NotificationsButtonWidget()],
            bottom: HomeSearchBarWidget(),
          )
        ],
      ),
    ));
  }
}
