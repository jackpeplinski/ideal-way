import 'package:flutter/material.dart';
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
              MaterialPageRoute(builder: (BuildContext context) => nextPage1)),
        ),
        choiceIcon(
          context,
          selection4,
          () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => nextPage2)),
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
    drawer: MainDrawer(),
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
          ),
          Center(
              child: questionBar(
                  "What emotion is this person most likely feeling?")),
          choicesGrid(context, selection1, selection2, selection3, selection4,
              nextPage1, nextPage2, nextPage3, nextPage4)
        ]),
  );
}

Widget incorrectAnswer(BuildContext context, String imageLink, String errorMessage) {
  return Scaffold(
    drawer: MainDrawer(),
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
        ),
        Center(
            child: questionBar(
                "What emotion is this person most likely feeling?")),
        Expanded(
          child: GestureDetector(
            //onTap: tapGameHandler,
            child: Card(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(60),
                child: Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
