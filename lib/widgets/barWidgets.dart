import 'package:flutter/material.dart';

//Game + TEXTUNDERNEATH creates
Widget iconInBar(
    String levelText, double setOpacity, String imageLink, double height) {
  //'assets/trophy.png'
  return Opacity(
    opacity: setOpacity,
    child: Column(
      children: <Widget>[
        Image.asset(imageLink, height: height),
        Text(levelText),
      ],
    ),
  );
}

//GAME BACKGROUND BAR create
Widget gameBackgroundBar(
  BuildContext context,
  String levelText1,
  double setOpacity1,
  String imageLink1,
  double height1,
  Widget route1,
  String levelText2,
  double setOpacity2,
  String imageLink2,
  double height2,
  Widget route2,
  String levelText3,
  double setOpacity3,
  String imageLink3,
  double height3,
  Widget route3,
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
            GestureDetector(
              child: iconInBar(levelText1, setOpacity1, imageLink1, height1),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => route1));
              },
            ),
            GestureDetector(
              child: iconInBar(levelText2, setOpacity2, imageLink2, height2),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => route2));
              },
            ),
            GestureDetector(
              child: iconInBar(levelText3, setOpacity3, imageLink3, height3),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => route3));
              },
            ),
          ],
        ),
      ),
    ),
  );
}

//AWARD BACKGROUND BAR creates
Widget awardBackgroundBar(
  String levelText1,
  double setOpacity1,
  String imageLink1,
  double height1,
  String levelText2,
  double setOpacity2,
  String imageLink2,
  double height2,
  String levelText3,
  double setOpacity3,
  String imageLink3,
  double height3,
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
            iconInBar(levelText1, setOpacity1, imageLink1, height1),
            iconInBar(levelText2, setOpacity2, imageLink2, height2),
            iconInBar(levelText3, setOpacity3, imageLink3, height3),
          ],
        ),
      ),
    ),
  );
}

//TITLE creates
Widget titleBar(String text) {
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
