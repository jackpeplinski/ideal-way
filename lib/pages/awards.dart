import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/barWidgets.dart';
import '../widgets/mainDrawer.dart';
import '../models/user.dart';

class AwardsPage extends StatefulWidget {
  final User user;
  static const routeName = '/awardsPage';

  AwardsPage(this.user);

  @override
  _AwardsPageState createState() => _AwardsPageState();
}

class _AwardsPageState extends State<AwardsPage> {
  @override
  Widget build(BuildContext context) {
    //could use to scale? double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Awards"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            backgroundBar(
                "Level 1",
                widget.user.award.confidence.opacity1,
                'assets/trophy.png',
                50,
                "Level 2",
                widget.user.award.confidence.opacity2,
                'assets/trophy.png',
                50,
                "Level 3",
                widget.user.award.confidence.opacity3,
                'assets/trophy.png',
                50),
            titleBar("Empathy"),
          ],
        ),
        Stack(
          children: <Widget>[
            backgroundBar(
                "Level 1",
                widget.user.award.leadership.opacity1,
                'assets/trophy.png',
                50,
                "Level 2",
                widget.user.award.leadership.opacity2,
                'assets/trophy.png',
                50,
                "Level 3",
                widget.user.award.leadership.opacity3,
                'assets/trophy.png',
                50),
            titleBar("Leadership"),
          ],
        ),
        Stack(
          children: <Widget>[
            backgroundBar(
                "Level 1",
                widget.user.award.teamwork.opacity1,
                'assets/trophy.png',
                50,
                "Level 2",
                widget.user.award.teamwork.opacity2,
                'assets/trophy.png',
                50,
                "Level 3",
                widget.user.award.teamwork.opacity3,
                'assets/trophy.png',
                50),
            titleBar("Teamwork"),
          ],
        ),
        Stack(
          children: <Widget>[
            backgroundBar(
                "Level 1",
                widget.user.award.confidence.opacity1,
                'assets/trophy.png',
                50,
                "Level 2",
                widget.user.award.confidence.opacity2,
                'assets/trophy.png',
                50,
                "Level 3",
                widget.user.award.confidence.opacity3,
                'assets/trophy.png',
                50),
            titleBar("Confidence"),
          ],
        ),
        Stack(
          children: <Widget>[
            backgroundBar(
                "Level 1",
                widget.user.award.empathy.opacity1,
                'assets/trophy.png',
                50,
                "Level 2",
                widget.user.award.empathy.opacity2,
                'assets/trophy.png',
                50,
                "Level 3",
                widget.user.award.empathy.opacity3,
                'assets/trophy.png',
                50),
            titleBar("Empathy"),
          ],
        ),
      ])),
    );
  }
}
