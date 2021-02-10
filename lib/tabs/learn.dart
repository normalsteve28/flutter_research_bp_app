import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

import '../assets.dart'; // Contains svg icons

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

class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 249,
          height: 248,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
