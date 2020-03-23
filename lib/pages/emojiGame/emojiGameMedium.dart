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
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotion1-3.png',
        "Contempt",
        "Anger",
        "Surprise",
        "Disgust",
        3,
        IncorrectEmojiGameMedium3(),
        IncorrectEmojiGameMedium3(),
        EmojiGameMedium4(),
        IncorrectEmojiGameMedium3());
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
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotion1-3.png',
        "");
  }
}

//fourth image page
class EmojiGameMedium4 extends StatefulWidget {
  @override
  _EmojiGameMedium4State createState() => _EmojiGameMedium4State();
}

class _EmojiGameMedium4State extends State<EmojiGameMedium4> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotion1-4.png',
        "Contempt",
        "Anger",
        "Surprise",
        "Disgust",
        3,
        IncorrectEmojiGameMedium4(),
        IncorrectEmojiGameMedium4(),
        EmojiGameMedium5(),
        IncorrectEmojiGameMedium4());
  }
}

class IncorrectEmojiGameMedium4 extends StatefulWidget {
  @override
  _IncorrectEmojiGameMedium4State createState() =>
      _IncorrectEmojiGameMedium4State();
}

class _IncorrectEmojiGameMedium4State extends State<IncorrectEmojiGameMedium4> {
  @override
  Widget build(BuildContext context) {
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotion1-4.png',
        "");
  }
}

//fifth image page
class EmojiGameMedium5 extends StatefulWidget {
  @override
  _EmojiGameMedium5State createState() => _EmojiGameMedium5State();
}

class _EmojiGameMedium5State extends State<EmojiGameMedium5> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotion1-6.png',
        "Contempt",
        "Anger",
        "Surprise",
        "Disgust",
        3,
        IncorrectEmojiGameMedium5(),
        IncorrectEmojiGameMedium5(),
        EmojiGameMedium6(),
        IncorrectEmojiGameMedium5());
  }
}

class IncorrectEmojiGameMedium5 extends StatefulWidget {
  @override
  _IncorrectEmojiGameMedium5State createState() =>
      _IncorrectEmojiGameMedium5State();
}

class _IncorrectEmojiGameMedium5State extends State<IncorrectEmojiGameMedium5> {
  @override
  Widget build(BuildContext context) {
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotion1-6.png',
        "");
  }
}

//sixth image page
class EmojiGameMedium6 extends StatefulWidget {
  @override
  _EmojiGameMedium6State createState() => _EmojiGameMedium6State();
}

class _EmojiGameMedium6State extends State<EmojiGameMedium6> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotion1-7.png',
        "Contempt",
        "Anger",
        "Surprise",
        "Disgust",
        3,
        IncorrectEmojiGameMedium6(),
        IncorrectEmojiGameMedium6(),
        EmojiGameMedium7(),
        IncorrectEmojiGameMedium6());
  }
}

class IncorrectEmojiGameMedium6 extends StatefulWidget {
  @override
  _IncorrectEmojiGameMedium6State createState() =>
      _IncorrectEmojiGameMedium6State();
}

class _IncorrectEmojiGameMedium6State extends State<IncorrectEmojiGameMedium6> {
  @override
  Widget build(BuildContext context) {
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotion1-7.png',
        "");
  }
}

//seventh image page
class EmojiGameMedium7 extends StatefulWidget {
  @override
  _EmojiGameMedium7State createState() => _EmojiGameMedium7State();
}

class _EmojiGameMedium7State extends State<EmojiGameMedium7> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotion1-8.png',
        "Contempt",
        "Anger",
        "Surprise",
        "Disgust",
        3,
        IncorrectEmojiGameMedium7(),
        IncorrectEmojiGameMedium7(),
        EmojiGameMediumLast(),
        IncorrectEmojiGameMedium7());
  }
}

class IncorrectEmojiGameMedium7 extends StatefulWidget {
  @override
  _IncorrectEmojiGameMedium7State createState() =>
      _IncorrectEmojiGameMedium7State();
}

class _IncorrectEmojiGameMedium7State extends State<IncorrectEmojiGameMedium7> {
  @override
  Widget build(BuildContext context) {
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotion1-8.png',
        "");
  }
}

//last image page
class EmojiGameMediumLast extends StatefulWidget {
  @override
  _EmojiGameMediumLastState createState() => _EmojiGameMediumLastState();
}

class _EmojiGameMediumLastState extends State<EmojiGameMediumLast> {
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
      CorrectEmojiGameMediumLast(),
      IncorrectEmojiGameMediumLast(),
      IncorrectEmojiGameMediumLast(),
      IncorrectEmojiGameMediumLast(),
    );
  }
}

class IncorrectEmojiGameMediumLast extends StatefulWidget {
  @override
  _IncorrectEmojiGameMediumLastState createState() =>
      _IncorrectEmojiGameMediumLastState();
}

class _IncorrectEmojiGameMediumLastState extends State<IncorrectEmojiGameMediumLast> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotion1-2.png',
        "When someone is ___, they tend to press their lips together tightly, and furrow their eyebrows. Also, they will tend to shift and raise their voice, becoming more aggressive and perhaps even yelling. ");
  }
}

class CorrectEmojiGameMediumLast extends StatefulWidget {
  @override
  _CorrectEmojiGameMediumLastState createState() => _CorrectEmojiGameMediumLastState();
}

class _CorrectEmojiGameMediumLastState extends State<CorrectEmojiGameMediumLast> {
  @override
  Widget build(BuildContext context) {
    return presentAward(context, 'assets/emotion1-2.png', 'assets/EmpathySilver.png');
  }
}
