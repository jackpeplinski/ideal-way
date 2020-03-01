import 'package:flutter/material.dart';

import '../pages/awards.dart';
import '../pages/home.dart';
import '../pages/settings.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(BuildContext context, String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
        size: 26.0,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontFamily: "OxaniumBold"
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120.0,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
              child: Text(
                "IDEAL WAY",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontFamily: "OxaniumBold",
                  fontSize: 40.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          buildListTile(
            context,
            "Home Screen",
            Icons.home,
            () => Navigator.of(context)
                .pushReplacementNamed(HomeScreen.routeName),
          ),
          buildListTile(
            context,
            "Awards",
            MdiIcons.medal,
            () => Navigator.of(context)
                .pushReplacementNamed(AwardsPage.routeName),
          ),
          buildListTile(
            context,
            "Settings",
            Icons.settings,
            () => Navigator.of(context)
                .pushReplacementNamed(Settings.routeName),
          ),
        ],
      ),
    );
  }
}
