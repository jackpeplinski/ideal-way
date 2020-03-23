import 'package:flutter/material.dart';
import 'package:ideal_way/pages/games.dart';

Widget questionBar(String text) {
  return Align(
    alignment: Alignment.center,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      color: Colors.orange,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget choiceIcon(
    BuildContext context, String selection, Function tapGameHandler) {
  return Expanded(
    child: GestureDetector(
      onTap: tapGameHandler,
      child: Card(
        color: Theme.of(context).primaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Center(
            child: Text(
              selection,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
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
    int correct,
    Widget nextPage1,
    Widget nextPage2,
    Widget nextPage3,
    Widget nextPage4) {
  return Expanded(
    child: Column(children: <Widget>[
      Row(
        children: <Widget>[
          choiceIcon(
            context,
            selection1,
            //this whole next line is one function
            (correct == 1)
                ? () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage1))
                : () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage1)),
          ),
          choiceIcon(
            context,
            selection2,
            (correct == 2)
                ? () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage2))
                : () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage2)),
          )
        ],
      ),
      Row(
        children: <Widget>[
          choiceIcon(
            context,
            selection3,
            (correct == 3)
                ? () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage3))
                : () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage3)),
          ),
          choiceIcon(
            context,
            selection4,
            (correct == 4)
                ? () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage4))
                : () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => nextPage4)),
          )
        ],
      ),
    ]),
  );
}

Widget gameScreen(
    BuildContext context,
    String imageLocation,
    String selection1,
    String selection2,
    String selection3,
    String selection4,
    int correct,
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
          Center(child: questionBar("How are they feeling?")),
          choicesGrid(context, selection1, selection2, selection3, selection4,
              correct, nextPage1, nextPage2, nextPage3, nextPage4)
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
          height: 390,
        ),
        Center(
            child: questionBar(
                "Good try! Try again with the help of the message below.")),
        Expanded(
          child: GestureDetector(
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                color: Colors.red,
                child: Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
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
            margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: EdgeInsets.all(5),
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
        Center(child: questionBar("Answer correct! You earned an award.")),
        Expanded(
          child: GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Image.asset(awardLink),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Games()));
          },
          child: Card(
            color: Theme.of(context).primaryColor,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            child: Text(
              "Return to Games Page",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        )
      ],
    ),
  );
}
