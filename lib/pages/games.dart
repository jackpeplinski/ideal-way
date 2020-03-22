import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/barWidgets.dart';
import '../widgets/barWidgets.dart';
import 'comingSoon.dart';
import 'emojiGame/emojiGameEasy.dart';
import 'emojiGame/emojiGameHard.dart';
import 'emojiGame/emojiGameMedium.dart';
import '../widgets/mainDrawer.dart';

class Games extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("Games"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(children: <Widget>[
            gameBackgroundBar(
                context,
                "Easy",
                1,
                'assets/GuessEmotionLv1.png',
                100, 
                EmojiGameEasy1(),
                "Medium",
                1,
                'assets/GuessEmotionLv2.png',
                100,
                EmojiGameMedium1(),
                "Hard",
                1,
                'assets/GuessEmotionLv3.png',
                100,
                EmojiGameHard1(),
                true),
            titleBar("Emotion Game")
          ]),
          Stack(children: <Widget>[
            gameBackgroundBar(
                context,
                "Easy",
                1,
                'assets/StoryTimeLv1.png',
                100,
                ComingSoon(),
                "Medium",
                1,
                'assets/StoryTimeLv2.png',
                100,
                ComingSoon(),
                "Hard",
                1,
                'assets/StoryTimeLv3.png',
                100,
                ComingSoon(),
                false),
            titleBar("StoryTime")
          ]),
          Stack(children: <Widget>[
            gameBackgroundBar(
                context,
                "Easy",
                1,
                'assets/PicStoryLv1.png',
                100,
                ComingSoon(),
                "Medium",
                1,
                'assets/PicStoryLv2.png',
                100,
                ComingSoon(),
                "Hard",
                1,
                'assets/PicStoryLv3.png',
                100,
                ComingSoon(),
                false),
            titleBar("PicStory")
          ]),
          Stack(children: <Widget>[
            gameBackgroundBar(
                context,
                "Easy",
                1,
                'assets/PictionaryLv1.png',
                100,
                ComingSoon(),
                "Medium",
                1,
                'assets/PictionaryLv2.png',
                100,
                ComingSoon(),
                "Hard",
                1,
                'assets/PictionaryLv3.png',
                100,
                ComingSoon(),
                false),
            titleBar("Pictionary")
          ]),
          Stack(children: <Widget>[
            gameBackgroundBar(
                context,
                "Easy",
                1,
                'assets/ColorMatcherLv1.png',
                100,
                ComingSoon(),
                "Medium",
                1,
                'assets/ColorMatcherLv2.png',
                100,
                ComingSoon(),
                "Hard",
                1,
                'assets/ColorMatcherLv3.png',
                100,
                ComingSoon(),
                false),
            titleBar("ColorMatcher")
          ]),
        ]),
      ),
    );
  }
}
