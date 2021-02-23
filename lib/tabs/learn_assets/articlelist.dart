import 'package:flutter/material.dart';

import 'articles.dart';

class ArticleList extends StatelessWidget {
  final List<Widget> articleList = [
    ArticleCard("What is hypertension?", articles[1]),
    ArticleCard("Symptoms and causes of hypertension", articles[2]),
    ArticleCard("What is blood pressure?", articles[3]),
    ArticleCard("What is heart rate?", articles[4]),
    ArticleCard("How to stay heart healthy", articles[5])
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
  final String article;

  ArticleCard(this.title, this.article);

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArticleHandler(title, article)),
            );
          },
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color(0xfffe7575),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class ArticleHandler extends StatelessWidget {
  final String title;
  final String article;

  ArticleHandler(this.title, this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Color(0xffFE7575),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Montserrat",
            ),
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(25),
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(article,
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            )));
  }
}
