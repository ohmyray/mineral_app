import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTableView(key, val) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        '$key:',
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      Text('$val')
    ],
  );
}
