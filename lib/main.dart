import 'package:flutter/material.dart';

import './pages/login.dart';
import './pages/awards.dart';
import './pages/home.dart';
import './pages/settings.dart';
import './pages/feedback.dart';
import './pages/profile.dart';

import './models/user.dart';
import './models/award_cateogry.dart';
import './models/award_level.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  User user = User(
    complexity: Complexity.Hard,
    award: AwardCateogry(
      confidence: Awards(),
      empathy: Awards(),
      empowerment: Awards(),
      inclusion: Awards(),
      leadership: Awards(),
      socialResponsibility: Awards(),
      teamwork: Awards(),
      ),
    );
//what's with bar?
  void _bar(String award, String level){
    setState(() {
      if(award == "confidence"){
        if(user.award.confidence.level1 == level){
          user.award.confidence.opacity1 = 1;
        }
        if(user.award.confidence.level2 == level){
          user.award.confidence.opacity2 = 2;
        }
        if(user.award.confidence.level3 == level){
          user.award.confidence.opacity3 = 3;
        }
      }else if(award == "empathy"){
        if(user.award.empathy.level1 == level){
          user.award.empathy.opacity1 = 1;
        }
        if(user.award.empathy.level2 == level){
          user.award.empathy.opacity2 = 2;
        }
        if(user.award.empathy.level3 == level){
          user.award.empathy.opacity3 = 3;
        }
      }else if(award == "empowerment"){
        if(user.award.empowerment.level1 == level){
          user.award.empowerment.opacity1 = 1;
        }
        if(user.award.empowerment.level2 == level){
          user.award.empowerment.opacity2 = 2;
        }
        if(user.award.empowerment.level3 == level){
          user.award.empowerment.opacity3 = 3;
        }
      }else if(award == "inclusion"){
        if(user.award.inclusion.level1 == level){
          user.award.inclusion.opacity1 = 1;
        }
        if(user.award.inclusion.level2 == level){
          user.award.inclusion.opacity2 = 2;
        }
        if(user.award.inclusion.level3 == level){
          user.award.inclusion.opacity3 = 3;
        }
      }else if(award == "leadership"){
        if(user.award.leadership.level1 == level){
          user.award.leadership.opacity1 = 1;
        }
        if(user.award.leadership.level2 == level){
          user.award.leadership.opacity2 = 2;
        }
        if(user.award.leadership.level3 == level){
          user.award.leadership.opacity3 = 3;
        }
      }else if(award == "socailResponsibility"){
        if(user.award.socialResponsibility.level1 == level){
          user.award.socialResponsibility.opacity1 = 1;
        }
        if(user.award.socialResponsibility.level2 == level){
          user.award.socialResponsibility.opacity2 = 2;
        }
        if(user.award.socialResponsibility.level3 == level){
          user.award.socialResponsibility.opacity3 = 3;
        }
      }else if(award == "teamwork"){
        if(user.award.teamwork.level1 == level){
          user.award.teamwork.opacity1 = 1;
        }
        if(user.award.teamwork.level2 == level){
          user.award.teamwork.opacity2 = 2;
        }
        if(user.award.teamwork.level3 == level){
          user.award.teamwork.opacity3 = 3;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ideal Way',
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.blue[200],
        primarySwatch: Colors.orange,
        backgroundColor: Colors.teal[50],
        fontFamily: 'Oxanium',
      ),
      routes:{
        '/' : (ctx) => Login(),
        AwardsPage.routeName : (ctx) => AwardsPage(user),
        HomeScreen.routeName : (ctx) => HomeScreen(),
        Settings.routeName : (ctx) => Settings(),
        FeedbackPage.routeName : (ctx) => FeedbackPage(),
        Profile.routeName : (ctx) => Profile(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        );
      },
    );
  }
}