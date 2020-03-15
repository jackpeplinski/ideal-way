import 'package:flutter/material.dart';
import 'package:ideal_way/widgets/mainDrawer.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Games"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Card(
              color: Colors.deepOrange[50],
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text("Coming Soon"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
