import 'package:flutter/material.dart';
import 'package:ideal_way/pages/games.dart';
import 'package:ideal_way/widgets/mainDrawer.dart';

Widget questionBar(String text) {
  return Align(
    alignment: Alignment.center,
    child: Card(
      color: Colors.orange,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget choiceIcon(
    BuildContext context,
    String selection,
    //these functions
    Function tapGameHandler) {
  return Expanded(
    child: GestureDetector(
      onTap: tapGameHandler,
      child: Card(
        child: Padding(
            padding: EdgeInsets.all(60), child: Center(child: Text(selection))),
      ),
    ),
  );
}

Widget choicesGrid(
    BuildContext context,
    String selection1,
    String selection2,
    String selection3,
    String selection4,
    Widget nextPage1,
    Widget nextPage2,
    Widget nextPage3,
    Widget nextPage4) {
  return Column(children: <Widget>[
    Row(
      children: <Widget>[
        choiceIcon(
          context,
          selection1,
          //this whole next line is one function
          () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => nextPage1)),
        ),
        choiceIcon(
          context,
          selection2,
          () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => nextPage2)),
        )
      ],
    ),
    Row(
      children: <Widget>[
        choiceIcon(
          context,
          selection3,
          () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => nextPage3)),
        ),
        choiceIcon(
          context,
          selection4,
          () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => nextPage4)),
        )
      ],
    ),
  ]);
}

Widget gameScreen(
    BuildContext context,
    String imageLocation,
    String selection1,
    String selection2,
    String selection3,
    String selection4,
    Widget nextPage1,
    Widget nextPage2,
    Widget nextPage3,
    Widget nextPage4) {
  return Scaffold(
    backgroundColor: Theme.of(context).backgroundColor,
    appBar: AppBar(
      title: Text("Emoji Game"),
      backgroundColor: Theme.of(context).primaryColor,
    ),
    body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            imageLocation,
            width: 300,
            height: 400,
          ),
          Center(
              child: questionBar(
                  "What emotion is this person most likely feeling?")),
          choicesGrid(context, selection1, selection2, selection3, selection4,
              nextPage1, nextPage2, nextPage3, nextPage4)
        ]),
  );
}

Widget incorrectAnswer(
    BuildContext context, String imageLink, String errorMessage) {
  return Scaffold(
    backgroundColor: Theme.of(context).backgroundColor,
    appBar: AppBar(
      title: Text("Emoji Game"),
      backgroundColor: Theme.of(context).primaryColor,
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(
          imageLink,
          width: 300,
          height: 400,
        ),
        Center(
            child: questionBar("Answer incorrect. Review the message below.")),
        Expanded(
          child: GestureDetector(
            child: Card(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(60),
                child: Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Card(
            color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Return",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget presentAward(BuildContext context, String imageLink, String awardLink) {
  return Scaffold(
    backgroundColor: Theme.of(context).backgroundColor,
    appBar: AppBar(
      title: Text("Emoji Game"),
      backgroundColor: Theme.of(context).primaryColor,
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(
          imageLink,
          width: 300,
          height: 400,
        ),
        Center(child: questionBar("Answer correct! You earned a award.")),
        Expanded(
          child: GestureDetector(
            child: Card(
              color: Colors.deepOrange[50],
              child: Padding(
                  padding: EdgeInsets.all(60), child: Image.asset(awardLink)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Games()));
          },
          child: Card(
            color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Games Page",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
