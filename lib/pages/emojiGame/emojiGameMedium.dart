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
        3,
        IncorrectEmojiGameMedium1(),
        IncorrectEmojiGameMedium1(),
        EmojiGameEasy2(),
        IncorrectEmojiGameMedium1());
  }
}

class IncorrectEmojiGameMedium1 extends StatefulWidget {
  @override
  _IncorrectEmojiGameMedium1State createState() =>
      _IncorrectEmojiGameMedium1State();
}

class _IncorrectEmojiGameMedium1State extends State<IncorrectEmojiGameMedium1> {
  @override
  Widget build(BuildContext context) {
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotion1-1.png',
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
        'assets/emotion1-5.png',
        "Happy",
        "Amusement",
        "Sad",
        "Disgust",
        2,
        IncorrectEmojiGameMedium2(),
        EmojiGameMedium3(),
        IncorrectEmojiGameMedium2(),
        IncorrectEmojiGameMedium2());
  }
}

class IncorrectEmojiGameMedium2 extends StatefulWidget {
  @override
  _IncorrectEmojiGameMedium2State createState() =>
      _IncorrectEmojiGameMedium2State();
}

class _IncorrectEmojiGameMedium2State extends State<IncorrectEmojiGameMedium2> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotion1-5.png',
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
      'assets/emotion1-2.png',
      "Annoyance",
      "Anger",
      "Contempt",
      "Sad",
      1,
      CorrectEmojiGameMedium3(),
      IncorrectEmojiGameMedium3(),
      IncorrectEmojiGameMedium3(),
      IncorrectEmojiGameMedium3(),
    );
  }
}

class IncorrectEmojiGameMedium3 extends StatefulWidget {
  @override
  _IncorrectEmojiGameMedium3State createState() =>
      _IncorrectEmojiGameMedium3State();
}

class _IncorrectEmojiGameMedium3State extends State<IncorrectEmojiGameMedium3> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotion1-2.png',
        "When someone is ___, they tend to press their lips together tightly, and furrow their eyebrows. Also, they will tend to shift and raise their voice, becoming more aggressive and perhaps even yelling. ");
  }
}

class CorrectEmojiGameMedium3 extends StatefulWidget {
  @override
  _CorrectEmojiGameMedium3State createState() => _CorrectEmojiGameMedium3State();
}

class _CorrectEmojiGameMedium3State extends State<CorrectEmojiGameMedium3> {
  @override
  Widget build(BuildContext context) {
    return presentAward(context, 'assets/emotion1-2.png', 'assets/EmpathySilver.png');
  }
}
