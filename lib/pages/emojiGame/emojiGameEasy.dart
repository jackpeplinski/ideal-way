import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/gameWidgets.dart';

//first image page
class EmojiGameEasy1 extends StatefulWidget {
  @override
  _EmojiGameEasy1State createState() => _EmojiGameEasy1State();
}

class _EmojiGameEasy1State extends State<EmojiGameEasy1> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotions0-1.jpg',
        "Sad",
        "Contempt",
        "Disgusted",
        "Fearful",
        1,
        EmojiGameEasy2(),
        IncorrectEmojiGameEasy1(),
        IncorrectEmojiGameEasy1(),
        IncorrectEmojiGameEasy1());
  }
}

class IncorrectEmojiGameEasy1 extends StatefulWidget {
  @override
  _IncorrectEmojiGameEasy1State createState() =>
      _IncorrectEmojiGameEasy1State();
}

class _IncorrectEmojiGameEasy1State extends State<IncorrectEmojiGameEasy1> {
  @override
  Widget build(BuildContext context) {
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotions0-1.jpg',
        "When someone is ___, they tend to have a downward gaze with both lips as well as eyebrows turned downwards at the edges.");
  }
}

//second image page
class EmojiGameEasy2 extends StatefulWidget {
  @override
  _EmojiGameEasy2State createState() => _EmojiGameEasy2State();
}

class _EmojiGameEasy2State extends State<EmojiGameEasy2> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions0-2.jpg',
        "Angry",
        "Surprised",
        "Happy",
        "Amused",
        4,
        IncorrectEmojiGameEasy2(),
        IncorrectEmojiGameEasy2(),
        IncorrectEmojiGameEasy2(),
        EmojiGameEasy3());
  }
}

class IncorrectEmojiGameEasy2 extends StatefulWidget {
  @override
  _IncorrectEmojiGameEasy2State createState() =>
      _IncorrectEmojiGameEasy2State();
}

class _IncorrectEmojiGameEasy2State extends State<IncorrectEmojiGameEasy2> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions0-2.jpg',
        "When someone is ___, they will tend to open their mouth and eyes widely, and raise their eyebrows. It may also include movements like jumping back, and verbal outbursts such as yelling, screaming, or gasping.");
  }
}

//third image
class EmojiGameEasy3 extends StatefulWidget {
  @override
  _EmojiGameEasy3State createState() => _EmojiGameEasy3State();
}

class _EmojiGameEasy3State extends State<EmojiGameEasy3> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions0-4.jpg',
        "Angry",
        "Surprised",
        "Happy",
        "Playful",
        4,
        IncorrectEmojiGameEasy3(),
        IncorrectEmojiGameEasy3(),
        IncorrectEmojiGameEasy3(),
        EmojiGameEasy4());
  }
}

class IncorrectEmojiGameEasy3 extends StatefulWidget {
  @override
  _IncorrectEmojiGameEasy3State createState() =>
      _IncorrectEmojiGameEasy3State();
}

class _IncorrectEmojiGameEasy3State extends State<IncorrectEmojiGameEasy3> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions0-4.jpg',
        "When someone is acting ___, they may act silly, making hand motions or other irregular movements (ie. sticking out their tongue)");
  }
}

//fourth image
class EmojiGameEasy4 extends StatefulWidget {
  @override
  _EmojiGameEasy4State createState() => _EmojiGameEasy4State();
}

class _EmojiGameEasy4State extends State<EmojiGameEasy4> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions0-5.jpg',
        "Bored",
        "Interested",
        "Scared",
        "Angry",
        4,
        EmojiGameEasy5(),
        IncorrectEmojiGameEasy4(),
        IncorrectEmojiGameEasy4(),
        IncorrectEmojiGameEasy4());
  }
}

class IncorrectEmojiGameEasy4 extends StatefulWidget {
  @override
  _IncorrectEmojiGameEasy4State createState() =>
      _IncorrectEmojiGameEasy4State();
}

class _IncorrectEmojiGameEasy4State extends State<IncorrectEmojiGameEasy4> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions0-5.jpg',
        "Someone is ___ when their facial expressions are disinterested and disconnected.");
  }
}

//fifth iamge
class EmojiGameEasy5 extends StatefulWidget {
  @override
  _EmojiGameEasy5State createState() => _EmojiGameEasy5State();
}

class _EmojiGameEasy5State extends State<EmojiGameEasy5> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions0-6.jpg',
        "Disgusted",
        "Playful",
        "Surprised",
        "Happy",
        4,
        IncorrectEmojiGameEasy5(),
        EmojiGameEasyLast(),
        IncorrectEmojiGameEasy5(),
        IncorrectEmojiGameEasy5(),);
  }
}

class IncorrectEmojiGameEasy5 extends StatefulWidget {
  @override
  _IncorrectEmojiGameEasy5State createState() =>
      _IncorrectEmojiGameEasy5State();
}

class _IncorrectEmojiGameEasy5State extends State<IncorrectEmojiGameEasy5> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions0-6.jpg',
        "When someone is acting ____, they may act silly, making hand motions or other irregular movements");
  }
}

//last image page
class EmojiGameEasyLast extends StatefulWidget {
  @override
  _EmojiGameEasyLastState createState() => _EmojiGameEasyLastState();
}

class _EmojiGameEasyLastState extends State<EmojiGameEasyLast> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
      context,
      'assets/emotions0-3.jpg',
      "Surprised",
      "Disgusted",
      "Fearful",
      "Happy",
      1,
      CorrectEmojiGameEasyLast(),
      IncorrectEmojiGameEasyLast(),
      IncorrectEmojiGameEasyLast(),
      IncorrectEmojiGameEasyLast(),
    );
  }
}

class IncorrectEmojiGameEasyLast extends StatefulWidget {
  @override
  _IncorrectEmojiGameEasyLastState createState() =>
      _IncorrectEmojiGameEasyLastState();
}

class _IncorrectEmojiGameEasyLastState extends State<IncorrectEmojiGameEasyLast> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions0-3.jpg',
        "When someone is ___, they will tend to open their mouth and eyes widely, and raise their eyebrows. It may also include movements like jumping back, and verbal outbursts such as yelling, screaming, or gasping.");
  }
}

class CorrectEmojiGameEasyLast extends StatefulWidget {
  @override
  _CorrectEmojiGameEasyLastState createState() => _CorrectEmojiGameEasyLastState();
}

class _CorrectEmojiGameEasyLastState extends State<CorrectEmojiGameEasyLast> {
  @override
  Widget build(BuildContext context) {
    return presentAward(context, 'assets/emotions0-3.jpg', 'assets/EmpathyOG.png');
  }
}
