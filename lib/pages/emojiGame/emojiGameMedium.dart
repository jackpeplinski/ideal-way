import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/gameWidgets.dart';

//first image page
class EmojiGameMedium1 extends StatefulWidget {
  @override
  _EmojiGameMedium1State createState() => _EmojiGameMedium1State();
}

class _EmojiGameMedium1State extends State<EmojiGameMedium1> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotion1-1.png',
        "Contempt",
        "Anger",
        "Surprise",
        "Disgust",
        IncorrectEmojiGameEasy1(),
        IncorrectEmojiGameEasy1(),
        EmojiGameEasy2(),
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
    return incorrectAnswer(context, 'assets/emotions1-1.png',
        "When someone is _____, they will tend to open their mouth and eyes widely, and raise their eyebrows. It may also include movements like jumping back, and verbal outbursts such as yelling, screaming, or gasping.");
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
        'assets/emotions1-5.png',
        "Happy",
        "Amusement",
        "Sad",
        "Disgust",
        IncorrectEmojiGameEasy2(),
        EmojiGameMedium3(),
        IncorrectEmojiGameEasy2(),
        IncorrectEmojiGameEasy2());
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
    return incorrectAnswer(context, 'assets/emotions1-5.png',
        "When someone is ___, someone has found something funny or entertaining. They tend to throw their head back, tighten the muscles around their eyes and have their mouth opened and relaxed.");
  }
}

//third image page
class EmojiGameMedium3 extends StatefulWidget {
  @override
  _EmojiGameMedium3State createState() => _EmojiGameMedium3State();
}

class _EmojiGameMedium3State extends State<EmojiGameMedium3> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
      context,
      'emotions1-3.png',
      "Frustration",
      "Anger",
      "Contempt",
      "Sad",
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
    return incorrectAnswer(context, 'emotions1-3.png',
        "When someone is ___, they tend to press their lips together tightly, and furrow their eyebrows. Also, they will tend to shift and raise their voice, becoming more aggressive and perhaps even yelling. ");
  }
}

class CorrectEmojiGameEasy3 extends StatefulWidget {
  @override
  _CorrectEmojiGameEasy3State createState() => _CorrectEmojiGameEasy3State();
}

class _CorrectEmojiGameEasy3State extends State<CorrectEmojiGameEasy3> {
  @override
  Widget build(BuildContext context) {
    return presentAward(context, 'emotions1-3.png', 'assets/trophy.png');
  }
}
