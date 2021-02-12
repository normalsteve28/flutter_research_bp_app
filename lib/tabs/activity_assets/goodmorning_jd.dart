import 'package:flutter/material.dart';

//This class contains the good morning text
class GoodMorning extends StatelessWidget {
  final String username;

  GoodMorning(this.username);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Text(
            "Good Morning",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "$username",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
