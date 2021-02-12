import 'package:flutter/material.dart';

import 'activity_assets/activity_person.dart'; // this contains the icon
import 'activity_assets/goodmorning_jd.dart'; // this contains the good morning text with name
import 'activity_assets/history_boxes.dart'; // Contains history box
import 'activity_assets/see_all_buttons.dart'; // SEE ALL button handler

class Activity extends StatelessWidget {
  final String username;

  Activity(this.username);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActivityPerson(), // This widget is the icon
              GoodMorning(
                  username), // This widget is the good morning text with the name
            ],
          ),
          Row(
            // "My History" and SEE ALL button
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "My History",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SeeAllButton(null)
            ],
          ),
          HistoryBoxes(),
          Row(
            //"Statistics" and SEE ALL button
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Statistics",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SeeAllButton(null)
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3ffe7575),
                    blurRadius: 8,
                    offset: Offset(0, -1),
                  ),
                ],
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
