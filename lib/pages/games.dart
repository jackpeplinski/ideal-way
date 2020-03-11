import 'package:flutter/material.dart';
import 'package:ideal_way/pages/emojiGame.dart';
import 'package:ideal_way/widgets/barWidgets.dart';
import 'package:ideal_way/widgets/mainDrawer.dart';

class Games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Games"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Align(
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
                      child: iconBar("Easy", 1, 'assets/SurveyLv1.png', 100),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EmojiGame1()));
                      },
                    ),
                    iconBar("Medium", 1, 'assets/SurveyLv2.png', 100),
                    iconBar("Difficult", 1, 'assets/SurveyLv3.png', 100),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
