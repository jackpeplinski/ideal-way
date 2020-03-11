import 'package:flutter/material.dart';
import 'package:ideal_way/pages/profile.dart';
import 'package:ideal_way/widgets/gameWidgets.dart';

//first image page 
class EmojiGame1 extends StatefulWidget {
  @override
  _EmojiGame1State createState() => _EmojiGame1State();
}
class _EmojiGame1State extends State<EmojiGame1> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices here
    return gameScreen(context, 'assets/emotions1.png', "Frustration", "Sadness",
        "Anger", "Resentment", EmojiGame2(), Incorrect(), Incorrect(), Incorrect());
  }
}
class Incorrect extends StatefulWidget {
  @override
  _IncorrectState createState() => _IncorrectState();
}
class _IncorrectState extends State<Incorrect> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions1.png', "hello there");
  }
}

//second image page
class EmojiGame2 extends StatefulWidget {
  @override
  _EmojiGame2State createState() => _EmojiGame2State();
}
class _EmojiGame2State extends State<EmojiGame2> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(context, 'assets/emotions1.png', "hello", "test2",
        "test3", "test4", Incorrect2(), Incorrect2(), Incorrect2(), EmojiGame3());
  }
}
class Incorrect2 extends StatefulWidget {
  @override
  _IncorrectState createState() => _IncorrectState();
}
class _Incorrect2State extends State<Incorrect> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions1.png', "hello there");
  }
}

//third image page
class EmojiGame3 extends StatefulWidget {
  @override
  _EmojiGame2State createState() => _EmojiGame2State();
}
class _EmojiGame3State extends State<EmojiGame2> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(context, 'assets/emotions1.png', "hello", "test2",
        "test3", "test4", Profile(), Profile(), Profile(), Profile());
  }
}
class Incorrect3 extends StatefulWidget {
  @override
  _IncorrectState createState() => _IncorrectState();
}
class _Incorrect3State extends State<Incorrect> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions1.png', "hello there");
  }
}