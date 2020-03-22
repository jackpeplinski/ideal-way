import 'package:flutter/material.dart';
import 'package:ideal_way/pages/comingSoon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/mainDrawer.dart';
import 'games.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';

  Widget selectCard(BuildContext context, String text, IconData icon) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      icon,
                      size: 60.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Welcome to Ideal Way",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            width: 250.0,
            height: 250.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/idealWay.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Games()));
              },
              child: selectCard(context, "Singleplayer", MdiIcons.account)),
          SizedBox(height: 20.0),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ComingSoon()));
              },
              child:
                  selectCard(context, "Multiplayer", MdiIcons.accountMultiple)),
          SizedBox(height: 30.0),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
