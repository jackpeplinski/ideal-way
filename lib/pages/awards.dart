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
            awardBackgroundBar(
                "Level 1",
                widget.user.award.confidence.opacity1,
                'assets/TeamworkOG.png',
                50,
                "Level 2",
                widget.user.award.confidence.opacity2,
                'assets/TeamworkSilver.png',
                50,
                "Level 3",
                widget.user.award.confidence.opacity3,
                'assets/TeamworkGold.png',
                50),
            titleBar("Teamwork"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBackgroundBar(
                "Level 1",
                widget.user.award.leadership.opacity1,
                'assets/ResponsibilityOG.png',
                50,
                "Level 2",
                widget.user.award.leadership.opacity2,
                'assets/ResponsibilityBronze.png',
                50,
                "Level 3",
                widget.user.award.leadership.opacity3,
                'assets/ResponsibilityGold.png',
                50),
            titleBar("Responsibility"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBackgroundBar(
                "Level 1",
                widget.user.award.teamwork.opacity1,
                'assets/LeadershipOG.png',
                50,
                "Level 2",
                widget.user.award.teamwork.opacity2,
                'assets/LeadershipSilver.png',
                50,
                "Level 3",
                widget.user.award.teamwork.opacity3,
                'assets/LeadershipGold.png',
                50),
            titleBar("Leadership"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBackgroundBar(
                "Level 1",
                widget.user.award.confidence.opacity1,
                'assets/EmpowermentOG.png',
                50,
                "Level 2",
                widget.user.award.confidence.opacity2,
                'assets/EmpowermentSilver.png',
                50,
                "Level 3",
                widget.user.award.confidence.opacity3,
                'assets/EmpowermentGold.png',
                50),
            titleBar("Empowerment"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBackgroundBar(
                "Level 1",
                widget.user.award.empathy.opacity1,
                'assets/InclusionOG.png',
                50,
                "Level 2",
                widget.user.award.empathy.opacity2,
                'assets/InclusionSilver.png',
                50,
                "Level 3",
                widget.user.award.empathy.opacity3,
                'assets/InclusionGold.png',
                50),
            titleBar("Inclusion"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBackgroundBar(
                "Level 1",
                widget.user.award.empathy.opacity1,
                'assets/ConfidenceOG.png',
                50,
                "Level 2",
                widget.user.award.empathy.opacity2,
                'assets/ConfidenceSilver.png',
                50,
                "Level 3",
                widget.user.award.empathy.opacity3,
                'assets/ConfidenceGold.png',
                50),
            titleBar("Inclusion"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBackgroundBar(
                "Level 1",
                widget.user.award.empathy.opacity1,
                'assets/InclusionOG.png',
                50,
                "Level 2",
                widget.user.award.empathy.opacity2,
                'assets/InclusionSilver.png',
                50,
                "Level 3",
                widget.user.award.empathy.opacity3,
                'assets/InclusionGold.png',
                50),
            titleBar("Inclusion"),
          ],
        ),
        Stack(
          children: <Widget>[
            awardBackgroundBar(
                "Level 1",
                widget.user.award.empathy.opacity1,
                'assets/EmpowermentOG.png',
                50,
                "Level 2",
                widget.user.award.empathy.opacity2,
                'assets/EmpowermentSilver.png',
                50,
                "Level 3",
                widget.user.award.empathy.opacity3,
                'assets/EmpowermentGold.png',
                50),
            titleBar("Empowerment"),
          ],
        ),
      ])),
    );
  }
}
