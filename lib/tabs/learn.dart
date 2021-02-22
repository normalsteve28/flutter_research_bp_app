import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

import '../assets.dart'; // Contains svg icons
import '../see_all_buttons.dart';

class Learn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            AppBarwithIcon(), // App Bar with Text and Icon Buttons (search, "Learn", and bookmark button)
        backgroundColor: Color(0xffFE7575),
      ),
      body: ArticleList(), // List of articles
      backgroundColor: Colors.pink[50],
    );
  }
}

class AppBarwithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            alignment: Alignment.centerLeft,
            icon: SvgPicture.asset(search),
            onPressed: null,
          ),
          Text(
            'Learn',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
            ),
          ),
          IconButton(
            alignment: Alignment.centerRight,
            icon: SvgPicture.asset(bookmarks),
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class ArticleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: 249,
            height: 248,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Text(
                "Heart Health 101",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
