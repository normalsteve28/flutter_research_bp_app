import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  final List<Widget> articleList = [
    ArticleCard("What is hypertension?"),
    ArticleCard("What is blood pressure?"),
    ArticleCard("What is heart rate?"),
    ArticleCard("How to stay heart healthy")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: articleList.length,
        itemBuilder: (context, index) {
          return articleList[index];
        },
      ),
    ));
  }
}

class ArticleCard extends StatelessWidget {
  final String title;

  ArticleCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Color(0xfffe7575),
              ),
            ),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
