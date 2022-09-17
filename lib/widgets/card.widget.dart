import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/article.model.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.article});

  ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Color.fromARGB(255, 29, 78, 87),
          height: 100,
          child: Column(
            children: [
              Text(article.author),
              Text(article.content),
            ],
          )),
    );
  }
}
