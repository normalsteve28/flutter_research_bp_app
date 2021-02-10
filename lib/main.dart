import 'package:flutter/material.dart';

import 'tabs/monitor.dart'; // Imports the monitor page
import 'tabs/activity.dart'; // Imports the activity page
import 'tabs/learn.dart'; // Imports the learn page
import './navbar.dart'; // Imports the tab bar

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: new Scaffold(
          body: TabBarView(
            children: [
              Activity(), // Activity page
              HomePage(), // Monitor page
              Learn(), // Learn Page
            ],
          ),
          bottomNavigationBar: NavBar(),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
