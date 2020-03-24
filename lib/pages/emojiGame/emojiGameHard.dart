import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/gameWidgets.dart';

//first image page
class EmojiGameHard1 extends StatefulWidget {
  @override
  _EmojiGameHard1State createState() => _EmojiGameHard1State();
}

class _EmojiGameHard1State extends State<EmojiGameHard1> {
  @override
  Widget build(BuildContext context) {
    //change routing and text for choices
    return gameScreen(
        context,
        'assets/emotions3-1.jpg',
        "Happy",
        "Surprised",
        "Amused",
        "Contempt",
        1,
        EmojiGameHard2(),
        IncorrectEmojiGameHard1(),
        IncorrectEmojiGameHard1(),
        IncorrectEmojiGameHard1());
  }
}

class IncorrectEmojiGameHard1 extends StatefulWidget {
  @override
  _IncorrectEmojiGameHard1State createState() => _IncorrectEmojiGameHard1State();
}

class _IncorrectEmojiGameHard1State extends State<IncorrectEmojiGameHard1> {
  @override
  Widget build(BuildContext context) {
    //change incorrect message
    return incorrectAnswer(context, 'assets/emotions3-1.jpg',
        "This emotion is defined turn at the corners of someone’s mouth, and sometimes a slight squint in someone’s eyes can indicate a true, genuine smile. When someone is ____, they tend to smile more, be more relaxed in their stance and have an upbeat, engaging tone of voice. ");
  }
}

//second image page
class EmojiGameHard2 extends StatefulWidget {
  @override
  _EmojiGameHard2State createState() => _EmojiGameHard2State();
}

class _EmojiGameHard2State extends State<EmojiGameHard2> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions3-2.jpg',
        "Contempt",
        "Surprised",
        "Angry",
        "Fearful",
        4,
        IncorrectEmojiGame2(),
        IncorrectEmojiGame2(),
        IncorrectEmojiGame2(),
        EmojiGameHard3());
  }
}

class IncorrectEmojiGame2 extends StatefulWidget {
  @override
  _IncorrectEmojiGame2State createState() => _IncorrectEmojiGame2State();
}

class _IncorrectEmojiGame2State extends State<IncorrectEmojiGame2> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-2.jpg',
        "When someone is in ____, they will tend to tighten their loops. When someone is treated with___, they generally are given much respect or attention. ");
  }
}

//third image page
class EmojiGameHard3 extends StatefulWidget {
  @override
  _EmojiGameHard3State createState() => _EmojiGameHard3State();
}

class _EmojiGameHard3State extends State<EmojiGameHard3> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions3-5.png',
        "Happy",
        "Surprised",
        "Neither",
        "Fearful",
        4,
        IncorrectEmojiGame3(),
        IncorrectEmojiGame3(),
        EmojiGameHard4(),
        IncorrectEmojiGame3());
  }
}

class IncorrectEmojiGame3 extends StatefulWidget {
  @override
  _IncorrectEmojiGame3State createState() => _IncorrectEmojiGame3State();
}

class _IncorrectEmojiGame3State extends State<IncorrectEmojiGame3> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-5.png',
        "");
  }
}

//fourth image page
class EmojiGameHard4 extends StatefulWidget {
  @override
  _EmojiGameHard4State createState() => _EmojiGameHard4State();
}

class _EmojiGameHard4State extends State<EmojiGameHard4> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions3-6.png',
        "Determined",
        "Intrigued",
        "Bored",
        "Angry",
        4,
        IncorrectEmojiGame4(),
        IncorrectEmojiGame4(),  
        EmojiGameHard5(),
        IncorrectEmojiGame4());
  }
}

class IncorrectEmojiGame4 extends StatefulWidget {
  @override
  _IncorrectEmojiGame4State createState() => _IncorrectEmojiGame4State();
}

class _IncorrectEmojiGame4State extends State<IncorrectEmojiGame4> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-6.png',
        "Someone is ___ when their facial expressions are disinterested and disconnected.  ");
  }
}

//fifth image page
class EmojiGameHard5 extends StatefulWidget {
  @override
  _EmojiGameHard5State createState() => _EmojiGameHard5State();
}

class _EmojiGameHard5State extends State<EmojiGameHard5> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions3-7.png',
        "Happy",
        "Fearful",
        "Surprised",
        "Sad",
        4,
        IncorrectEmojiGame5(),
        EmojiGameHard6(),
        IncorrectEmojiGame5(),
        IncorrectEmojiGame5());
  }
}

class IncorrectEmojiGame5 extends StatefulWidget {
  @override
  _IncorrectEmojiGame5State createState() => _IncorrectEmojiGame5State();
}

class _IncorrectEmojiGame5State extends State<IncorrectEmojiGame5> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-7.png',
        "Characterized by widening the eyes and pulling back of the chin. People tend to be ___ when they believe someone or something is dangerous, likely to cause pain, or serve as a threat. It may also lead to rapid breathing and increased heartbeat.");
  }
}

//sixth image page
class EmojiGameHard6 extends StatefulWidget {
  @override
  _EmojiGameHard6State createState() => _EmojiGameHard6State();
}

class _EmojiGameHard6State extends State<EmojiGameHard6> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions3-8.png',
        "Disgusted",
        "Upset",
        "Angry",
        "Fearful",
        4,
        EmojiGameHard7(),
        IncorrectEmojiGame6(),
        IncorrectEmojiGame6(),
        IncorrectEmojiGame6());
  }
}

class IncorrectEmojiGame6 extends StatefulWidget {
  @override
  _IncorrectEmojiGame6State createState() => _IncorrectEmojiGame6State();
}

class _IncorrectEmojiGame6State extends State<IncorrectEmojiGame6> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-8.png',
        "");
  }
}

//seventh image page
class EmojiGameHard7 extends StatefulWidget {
  @override
  _EmojiGameHard7State createState() => _EmojiGameHard7State();
}

class _EmojiGameHard7State extends State<EmojiGameHard7> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
        context,
        'assets/emotions3-3.jpg',
        "Sad",
        "Contempt",
        "Disgust",
        "Fearfu;",
        4,
        EmojiGameHardLast(),
        IncorrectEmojiGame7(),
        IncorrectEmojiGame7(),
        IncorrectEmojiGame7());
  }
}

class IncorrectEmojiGame7 extends StatefulWidget {
  @override
  _IncorrectEmojiGame7State createState() => _IncorrectEmojiGame7State();
}

class _IncorrectEmojiGame7State extends State<IncorrectEmojiGame7> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-3.jpg',
        "When someone is ___, they tend to have a downward gaze with both lips as well as eyebrows turned downwards at the edges. ");
  }
}

//last image page
class EmojiGameHardLast extends StatefulWidget {
  @override
  _EmojiGameHardLastState createState() => _EmojiGameHardLastState();
}

class _EmojiGameHardLastState extends State<EmojiGameHardLast> {
  @override
  Widget build(BuildContext context) {
    return gameScreen(
      context,
      'assets/emotions3-4.jpg',
      "Surprised",
      "Amused",
      "Angry",
      "Happy",
      3,
      IncorrectEmojiGameLast(),
      IncorrectEmojiGameLast(),
      CorrectEmojiGameFinal(),
      IncorrectEmojiGameLast(),
    );
  }
}

class IncorrectEmojiGameLast extends StatefulWidget {
  @override
  _IncorrectEmojiGameLastState createState() => _IncorrectEmojiGameLastState();
}

class _IncorrectEmojiGameLastState extends State<IncorrectEmojiGameLast> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-4.jpg',
        "When someone is____, they tend to press their lips together tightly, and furrow their eyebrows. Also, they will tend to shift and raise their voice, becoming more aggressive and perhaps even yelling. ");
  }
}

class CorrectEmojiGameFinal extends StatefulWidget {
  @override
  _CorrectEmojiGameFinalState createState() => _CorrectEmojiGameFinalState();
}

class _CorrectEmojiGameFinalState extends State<CorrectEmojiGameFinal> {
  @override
  Widget build(BuildContext context) {
    return presentAward(context, 'assets/emotions3-4.jpg', 'assets/EmpathyGold.png');
  }
}
