import 'package:flutter/material.dart';

import './home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  Widget userInput(String message, TextEditingController controller) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 2.0),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
        decoration: InputDecoration(
          hintText: message,
          border: OutlineInputBorder(),
        ),
        controller: controller,
        onSubmitted: (_) => null,
      ),
    );
  }

  void submitData() {
    final userName = userNameController.text;
    final password = passwordController.text;

    if (userName == "JoshuaRabovsky" && password == "Western") {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/appIcon.png',
            width: 200,
            height: 200,
          ),
          SizedBox(height: 20.0),
          userInput("Username", userNameController),
          userInput("Password", passwordController),
          Card(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            color: Theme.of(context).primaryColor,
            child: FlatButton(
              onPressed: () => submitData(),
              child: Text(
                "Submit",
                style: TextStyle(
                  fontFamily: "OxaniumBold",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
