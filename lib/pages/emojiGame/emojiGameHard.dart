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
        "Surprise",
        "Amusement",
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
        "Surprise",
        "Anger",
        "Fear",
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
      'assets/emotions3-4.jpg',
      "Surprise",
      "Amusement",
      "Angry",
      "Happy",
      3,
      IncorrectEmojiGame3(),
      IncorrectEmojiGame3(),
      CorrectEmojiGame3(),
      IncorrectEmojiGame3(),
    );
  }
}

class IncorrectEmojiGame3 extends StatefulWidget {
  @override
  _IncorrectEmojiGame3State createState() => _IncorrectEmojiGame3State();
}

class _IncorrectEmojiGame3State extends State<IncorrectEmojiGame3> {
  @override
  Widget build(BuildContext context) {
    return incorrectAnswer(context, 'assets/emotions3-4.jpg',
        "When someone is____, they tend to press their lips together tightly, and furrow their eyebrows. Also, they will tend to shift and raise their voice, becoming more aggressive and perhaps even yelling. ");
  }
}

class CorrectEmojiGame3 extends StatefulWidget {
  @override
  _CorrectEmojiGame3State createState() => _CorrectEmojiGame3State();
}

class _CorrectEmojiGame3State extends State<CorrectEmojiGame3> {
  @override
  Widget build(BuildContext context) {
    return presentAward(context, 'assets/emotions3-4.jpg', 'assets/EmpathyGold.png');
  }
}
