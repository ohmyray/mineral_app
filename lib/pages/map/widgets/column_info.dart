import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildColInfo(title, value) {
  return Row(
    children: <Widget>[
      Text('$title: ',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
      const SizedBox(
        width: 10,
        height: 30,
      ),
      Text('$value', style: const TextStyle(fontSize: 13)),
    ],
  );
}

Widget buildViewInfo(kqbh) {
  return Row(
    children: const <Widget>[
      // Expanded(
      //   child: Text(''), // 中间用Expanded控件
      // ),
      // SizedBox(
      //   width: 10,
      //   height: 40,
      // ),
      // Text(
      //   '查看矿区详情',
      //   style: TextStyle(
      //     color: Colors.blueAccent,
      //   ),
      // )
    ],
  );
}

Widget buildTitle(String title) {
  return Center(
    child: Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    ),
  );
}
