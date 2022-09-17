import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newnoticias/models/article.model.dart';

class ArticuloProvider {
  Future<List<ArticleModel>> getArticles() async {
    List<ArticleModel> articles = [];
    var client = http.Client();
    try {
      Map<String, String> parametros = {
        'q': 'tesla',
        'from': '2022-08-17',
        'sortBy': 'publishedAt',
        'apiKey': '3fb17bf7ea204cf5839f97817bd61194'
      };

      //var url = Uri.https('https://newsapi.org', 'v2/everything', parametros);
      var response = await client
          .get(Uri.https('newsapi.org', 'v2/everything', parametros));

      var decodedResponse =
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      decodedResponse['articles']
          .forEach((item) => articles.add(ArticleModel.fromJson(item)));

      return articles;
    } finally {
      client.close();
    }
  }
}
