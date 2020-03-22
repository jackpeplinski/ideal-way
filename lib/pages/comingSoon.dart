import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Coming Soon"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Card(
              color: Colors.deepOrange[50],
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Coming Soon",
                    style: TextStyle(fontSize: 40),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
