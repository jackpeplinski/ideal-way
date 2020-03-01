import 'package:flutter/material.dart';
import '../widgets/awardsWidgets.dart';
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
            awardBar(
                "Level 1",
                widget.user.award.confidence.opacity1,
                "Level 2",
                widget.user.award.confidence.opacity2,
                "Level 3",
                widget.user.award.confidence.opacity3),
            awardName("Empathy"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar(
                "Level 1",
                widget.user.award.leadership.opacity1,
                "Level 2",
                widget.user.award.leadership.opacity2,
                "Level 3",
                widget.user.award.leadership.opacity3),
            awardName("Leadership"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar(
                "Level 1",
                widget.user.award.teamwork.opacity1,
                "Level 2",
                widget.user.award.teamwork.opacity2,
                "Level 3",
                widget.user.award.teamwork.opacity3),
            awardName("Teamwork"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar(
                "Level 1",
                widget.user.award.confidence.opacity1,
                "Level 2",
                widget.user.award.confidence.opacity2,
                "Level 3",
                widget.user.award.confidence.opacity3),
            awardName("Confidence"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBar(
                "Level 1",
                widget.user.award.empathy.opacity1,
                "Level 2",
                widget.user.award.empathy.opacity2,
                "Level 3",
                widget.user.award.empathy.opacity3),
            awardName("Empathy"),
          ],
        ),
      ])),
    );
  }
}
