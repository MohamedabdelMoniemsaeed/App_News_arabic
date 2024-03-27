
import 'package:appnews/services/api.dart';
import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio = Dio();
  String urlDefold = 'https://newsapi.org/v2';
  String country = 'us';
  String apiKey = 'e76071d0b41e4e499085cd2fa1a2e3b4';
  // String category = 'general';

  Future<List<Articles>> getTopHeadlines({required String category}) async {
    try {
      final response = await dio.get(
          '$urlDefold/top-headlines?country=$country&apiKey=$apiKey&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Articles> articleList = [];
      for (var article in articles) {
        Articles articlesmodel = Articles.fromJson(article);
        articleList.add(articlesmodel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
