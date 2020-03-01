import 'package:flutter/material.dart';
import '../models/face.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FeedbackPage extends StatefulWidget {
  static const routeName = '/SettingsPage';

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  List<Face> faces = [
    Face(
        onOrOff: false, color: Colors.green, icon: MdiIcons.emoticon, value: 0),
    Face(
        onOrOff: false,
        color: Colors.lightGreen,
        icon: MdiIcons.emoticonHappy,
        value: 1),
    Face(
        onOrOff: false,
        color: Colors.yellow,
        icon: MdiIcons.emoticonNeutral,
        value: 2),
    Face(
        onOrOff: false,
        color: Colors.orange,
        icon: MdiIcons.emoticonSad,
        value: 3),
    Face(
        onOrOff: false,
        color: Colors.red,
        icon: MdiIcons.emoticonAngry,
        value: 4),
  ];

  Widget buttonFace(Face face) {
    return IconButton(
      onPressed: () => setState(() {
        for (int i = 0; i < faces.length; i++) {
          if (face.value == faces[i].value) {
            faces[i].onOrOff = !faces[i].onOrOff;
          } else if (faces[i].onOrOff) {
            faces[i].onOrOff = false;
          }
        }
      }),
      icon: Icon(
        face.icon,
        size: 60.0,
        color: face.onOrOff ? face.color : Colors.grey,
      ),
    );
  }

  Widget feedbackText(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Text(
        text,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 30.0,
          fontFamily: "OxaniumBold",
        ),
      ),
    );
  }

  List<bool> highlightList = [false, false, false];

  Widget feedbackCard(
      String text, bool highlight, int value, BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Card(
            elevation: 10.0,
            margin: EdgeInsets.all(2.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            color: highlight ? Theme.of(context).accentColor : Colors.white,
            child: FlatButton(
              onPressed: () => setState(() {
                for (int i = 0; i < 3; i++) {
                  if (value == i) {
                    highlightList[i] = !highlightList[i];
                  } else if (highlightList[i]) {
                    highlightList[i] = false;
                  }
                }
              }),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: "OxaniumBold",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  final titleController = TextEditingController();

  Widget feedbackResponse(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Tell us how we can help",
            border: OutlineInputBorder(),
          ),
          controller: titleController,
          onSubmitted: (_) => null,
          maxLines: 4,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
      ),
      body: Column(
        children: <Widget>[
          feedbackText("How do you feel about the app", context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buttonFace(faces[0]),
              buttonFace(faces[1]),
              buttonFace(faces[2]),
              buttonFace(faces[3]),
              buttonFace(faces[4]),
              SizedBox(width: 10.0),
            ],
          ),
          SizedBox(height: 20.0),
          feedbackText("Please select your feedback category below", context),
          Column(
            children: <Widget>[
              feedbackCard("Suggestion", highlightList[0], 0, context),
              feedbackCard(
                  "Something is not quite right", highlightList[1], 1, context),
              feedbackCard("Compliment", highlightList[2], 2, context),
            ],
          ),
          feedbackText("Tell us your feedback below", context),
          feedbackResponse(context),
        ],
      ),
      bottomNavigationBar: Card(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: Theme.of(context).primaryColor,
        child: FlatButton(
          onPressed: null,
          child: Text(
            "Submit",
            style: TextStyle(
              fontFamily: "OxaniumBold",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
