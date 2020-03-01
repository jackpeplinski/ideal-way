import 'package:flutter/material.dart';

//TROPHY + TEXT creates
Widget awardIcon(String levelText, double setOpacity) {
  return Opacity(
    opacity: setOpacity,
    child: Column(
      children: <Widget>[
        Image.asset('assets/trophy.png', height: 50),
        Text(levelText),
      ],
    ),
  );
}

//BACKGROUND BAR creates
Widget awardBar(
  String levelText1,
  double setOpacity1,
  String levelText2,
  double setOpacity2,
  String levelText3,
  double setOpacity3,
) {
  return Align(
    alignment: Alignment.center,
    child: Card(
      color: Colors.deepOrange[50],
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            awardIcon(levelText1, setOpacity1),
            awardIcon(levelText2, setOpacity2),
            awardIcon(levelText3, setOpacity3),
          ],
        ),
      ),
    ),
  );
}

//TITLE creates
Widget awardName(String text) {
  return Align(
    alignment: Alignment.center,
    child: AspectRatio(
      aspectRatio: 7,
      child: Card(
        color: Colors.orange,
        margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
