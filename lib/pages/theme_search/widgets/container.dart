import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

Widget infoCard(item) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: const Color(0xFF000000).withOpacity(0.05),
        blurRadius: 30,
        offset: const Offset(1, 0),
      )
    ]),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            item['name'],
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'avenir',
                fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('''矿区编号: ${item['code']}'''),
                  Text('''矿山编号: ${item['num']}''')
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('''生产状态: ${item['code']}'''),
                  Text('''经济类型: ${item['num']}''')
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('''矿山名称: ${item['code']}'''),
                  Text('''矿业权人: ${item['num']}''')
                ],
              ),
            ],
          )
        ]),
      ),
    ),
  );
}
