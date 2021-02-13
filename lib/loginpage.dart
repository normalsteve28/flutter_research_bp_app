import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import './assets.dart';
import './homepage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.hardEdge,
            children: [
              Positioned(
                  top: 200,
                  child: SvgPicture.asset(bpDrawing)), // This is the image
              Align(
                // This is aligning the container box that asks for signup
                alignment: Alignment.bottomCenter,
                child: Container(
                  // box contains column that contains Text and Sign Up button
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3fe14747),
                        blurRadius: 41,
                        offset: Offset(8, 4),
                      ),
                    ],
                    color: Color(0xffffebeb),
                  ),
                  child: Column(
                    // This column contains Text and Sign Up Button
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Measure your blood pressure\nevery where you go",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "With HeartGo, you can take your blood pressure easily",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Nunito"),
                        ),
                      ),
                      Container(
                        // Contains Sign up button
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        width: 269,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3fe14747),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfffe7575),
                        ),
                        child: FittedBox(
                          child: FlatButton(
                            // Sign Up button that heads to second login page
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPageTwo()),
                              );
                            },
                            child: Text(
                              // Text inside of Flat Button
                              "Sign up and start",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffffebeb),
    );
  }
}

class LoginPageTwo extends StatelessWidget {
  // Login Page Two is page with back button, textfield and Sign Up button
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffebeb),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('< Back',
                    style: TextStyle(fontFamily: "Nunito", fontSize: 20))),
          ),
          LoginForm()
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // this is the form that accepts a name and passes it onto the Homepage
  final myController = TextEditingController();
  String username;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your name here",
              ),
              controller: myController,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            width: 269,
            height: 59,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3fe14747),
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
              color: Color(0xfffe7575),
            ),
            child: FittedBox(
              child: FlatButton(
                // Sign Up button that heads to home
                onPressed: () {
                  username = myController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home(username: username)),
                  );
                },
                child: Text(
                  "Sign up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
