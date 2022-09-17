import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/article.model.dart';
import 'package:newnoticias/pages/detalle.page.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.article});

  ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetallePage(
                        article: article,
                      )));
        },
        child: Container(
            color: Color.fromARGB(255, 29, 78, 87),
            height: 100,
            child: Column(
              children: [
                Text(article.author),
                Text(article.content),
              ],
            )),
      ),
    );
  }
}
