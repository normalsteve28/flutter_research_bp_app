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
                  top: 150,
                  child: SvgPicture.asset(heartGo)), //This is HeartGo logo
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
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "With HeartGo, you can take your blood pressure easily",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Nunito"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "What's your name?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      LoginForm()
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

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // this is the form that accepts a name and passes it onto the Homepage
  final myController = TextEditingController();
  String username; // The username that the user submits
  Color buttonColor = Colors
      .grey; // This is the variable that holds the color of the sign up button
  Color buttonTextColor = Colors
      .black; // This is the variable that holds the text color of sign up button
  Function
      buttonFunction; // This variable holds the function of the sign up button

  void checkIfTextEmpty() {
    //This function checks if the text field is empty and assigns color and function to the button
    // depending on whether or not the text field is empty
    if (myController.text != "") {
      // If text is not empty, then button is pink and text is white, leads to homepage when pressed
      setState(() {
        buttonColor = Color(0xfffe7575);
        buttonTextColor = Colors.white;
        buttonFunction = () {
          username = myController.text;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home(username: username)),
          );
        };
      });
    } else {
      // If text is empty, then button will be grey and text will be black, buttonFunction will be null
      setState(() {
        buttonColor = Colors.grey;
        buttonTextColor = Colors.black;
        buttonFunction = null;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    // Calls the checkIfTextEmpty function every time the text changes.
    myController.addListener(checkIfTextEmpty);
  }

  @override
  void dispose() {
    // Cleans up the controller when the widget is disposed.
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
            // This container is what makes the button the shape and color it is
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
              color: buttonColor,
            ),
            child: TextButton(
              // This Sign Up button fills the previous container
              // This button heads to home if TextField is not empty
              onPressed: buttonFunction,
              child: Text(
                "Sign up",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: buttonTextColor,
                  fontSize: 18,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
