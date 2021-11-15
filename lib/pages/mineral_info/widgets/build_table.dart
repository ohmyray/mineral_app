import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTableView(key, val) {
  return key != 'zh'
      ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$key:',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 15),
            Expanded(
                child: Text(
              '$val',
              maxLines: 1,
              style: TextStyle(fontSize: 14, decoration: TextDecoration.none),
              overflow: TextOverflow.ellipsis,
            ))
          ],
        )
      : Container(
          height: 5,
          width: 5,
          child: Text(
            val,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )); // 标题;
}
