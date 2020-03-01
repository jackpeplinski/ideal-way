import 'package:flutter/material.dart';
import '../widgets/mainDrawer.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import './feedback.dart';
import './profile.dart';

class Settings extends StatelessWidget {
  static const routeName = './Settings';

  _launchURL() async {
    const url = 'https://www.ideal-way.ca/home.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } //opens the URL

  Widget settingsCard(BuildContext context, IconData icon, String assistText,
      Function tapHandler) {
    return Expanded(
      child: GestureDetector(
        onTap: tapHandler,
        child: Card(
          color: Theme.of(context).accentColor,
          elevation: 10.0,
          margin: EdgeInsets.all(20.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    icon,
                    size: 70.0,
                  ),
                ],
              ),
              Text(
                assistText,
                style: TextStyle(
                  fontFamily: 'OxaniumBold',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          settingsCard(
              context, MdiIcons.laptop, "Go visit our website!", _launchURL),
          settingsCard(
              context,
              MdiIcons.helpCircle,
              "Send us feedback!",
              () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => FeedbackPage()))),
          settingsCard(
              context,
              MdiIcons.accountCircle,
              "Adjust your information!",
              () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Profile()))),
          settingsCard(
            context,
            MdiIcons.logout,
            "Logout!",
            () => Navigator.of(context).pushReplacementNamed('/'),
          ),
        ],
      ),
    );
  }
}
