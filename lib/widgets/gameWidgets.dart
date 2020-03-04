import 'package:flutter/material.dart';

Widget choicesGrid(String selection1, String selection2, String selection3,
    String selection4) {
  return Column(
    children: <Widget>[
    Row(
      children: <Widget>[
        Card(child: Text(selection1)),
        Card(child: Text(selection2)),
      ],
    ),
    Row(children: <Widget>[
      Card(child: Text(selection3)),
      Card(child: Text(selection4)),
    ]),
  ]);
}
