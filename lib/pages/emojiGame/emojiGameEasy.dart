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
        "Disgust",
        "Fear",
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
        "Surprise",
        "Happy",
        "Amusement",
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

//third image page
class EmojiGameEasy3 extends StatefulWidget {
  @override
  _EmojiGameEasy3State createState() => _EmojiGameEasy3State();
}

class _EmojiGameEasy3State extends State<EmojiGameEasy3> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
      context,
      'emotions0-3.jpg',
      "Surprise",
      "Disgust",
      "Fear",
      "Happy",
      CorrectEmojiGameEasy3(),
      IncorrectEmojiGameEasy3(),
      IncorrectEmojiGameEasy3(),
      IncorrectEmojiGameEasy3(),
    );
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
    return incorrectAnswer(context, 'emotions0-3.jpg',
        "When someone is ___, they will tend to open their mouth and eyes widely, and raise their eyebrows. It may also include movements like jumping back, and verbal outbursts such as yelling, screaming, or gasping.");
  }
}

class CorrectEmojiGameEasy3 extends StatefulWidget {
  @override
  _CorrectEmojiGameEasy3State createState() => _CorrectEmojiGameEasy3State();
}

class _CorrectEmojiGameEasy3State extends State<CorrectEmojiGameEasy3> {
  @override
  Widget build(BuildContext context) {
    return presentAward(context, 'emotions0-3.jpg', 'assets/trophy.png');
  }
}
