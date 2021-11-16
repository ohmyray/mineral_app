import 'package:flutter/material.dart';

Widget buildTableView(key, val) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        '$key:',
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      const SizedBox(width: 15),
      Expanded(
          child: Text(
        '$val',
        maxLines: 1,
        style: const TextStyle(fontSize: 14, decoration: TextDecoration.none),
        overflow: TextOverflow.ellipsis,
      ))
    ],
  );
}
