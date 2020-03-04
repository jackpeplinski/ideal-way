import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/gameWidgets.dart';
import 'package:ideal_way/widgets/mainDrawer.dart';

class EmojiGame extends StatefulWidget {
  @override
  _EmojiGameState createState() => _EmojiGameState();
}

class _EmojiGameState extends State<EmojiGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("Emoji Game"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: choicesGrid("test1", "test2", "test3", "test4"),
        );
  }
}
