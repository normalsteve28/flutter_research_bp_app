import 'package:flutter/material.dart';

import 'loginpage.dart'; // Imports login page

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isLoggedIn = false;
  // This has no use. Supposedly, if the person has a username, this will turn true.
  // That way, when they already signed up, the app will not return to the sign up page every time
  // the app restarts.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: LoginPage(),
    );
  }
}
