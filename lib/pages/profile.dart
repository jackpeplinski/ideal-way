import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/PersonalInfo';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<bool> switches = [
    false,
    false,
    false,
  ];

  Widget personalInfoCard(
      bool onOrOff, int value, String difficulty, AssetImage image) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.all(10.0),
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: Text(
                difficulty,
                style: TextStyle(
                  fontFamily: 'OxaniumBold',
                ),
              ),
              value: onOrOff,
              onChanged: (bool newValue) => setState(() {
                for (int i = 0; i < 3; i++) {
                  if (i == value) {
                    switches[value] = newValue;
                  } else if (switches[i]) {
                    switches[i] = false;
                  }
                }
              }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Info"),
      ),
      body: Column(
        children: <Widget>[
          personalInfoCard(
              switches[0], 0, "Easy", AssetImage('assets/kid1.jpg')),
          personalInfoCard(
              switches[1], 1, "Medium", AssetImage('assets/kid2.jpg')),
          personalInfoCard(
              switches[2], 2, "Hard", AssetImage('assets/kid3.jpg')),
        ],
      ),
    );
  }
}
