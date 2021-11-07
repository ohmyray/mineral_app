import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mineral_app/pages/home/home_state.dart';
import '/pages/home/home_logic.dart';

class SearchBarWidget extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Get.theme.primaryColor,
          border: Border.all(
            color: Get.theme.focusColor.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 0),
            child: Icon(Icons.search, color: Get.theme.colorScheme.secondary),
          ),
          Expanded(
            child: Text(
              "输入搜索内容".tr,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.fade,
              style: Get.textTheme.caption,
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {
              //controller.increment();
            },
            child: Container(
              padding:
                  const EdgeInsets.only(right: 10, left: 10, top: 6, bottom: 6),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                color: Get.theme.focusColor.withOpacity(0.1),
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 4,
                children: [
                  Text(
                    "筛选".tr,
                    style: TextStyle(color: Get.theme.hintColor),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Get.theme.hintColor,
                    size: 21,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
