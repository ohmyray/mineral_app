import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mineral_app/database/model/bzd.dart';
import 'package:mineral_app/database/model/kcl/cxh.dart';
import 'package:mineral_app/database/model/kcl/dztj.dart';
import 'package:mineral_app/database/model/kqzxd.dart';
import 'package:mineral_app/database/model/tkq.dart';

import '../index.dart';
import '/database/model/kcl/ks.dart';

class ItemCard {
  dynamic title;
  dynamic nd;
  dynamic ms;
  ItemCard({
    this.title,
    this.nd,
    this.ms,
  });
}

Widget infoCard(ItemCard item) {
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
            item.title,
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
              const SizedBox(height: 10),
              lineInfo("描述", item.ms, "年度", item.nd),
            ],
          ),
        ]),
      ),
    ),
  );
}

Row lineInfo(lName, lValue, rName, rValue) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('''$lName: $lValue'''),
      // const Expanded(child: Text('')),
      Text('''$rName: $rValue''')
    ],
  );
}
