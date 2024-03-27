import 'package:appnews/services/api.dart';
import 'package:appnews/services/api_gnews.dart';
import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio = Dio();
  String urlDefold = 'https://gnews.io/api/v4/top-headlines';
  String country = 'eg';
  String apiKey = '053caba1addc91131fa3b38ddcb2d82f';
  String category = 'general';
  String lang = 'ar';
  Future<List<Articles>> getTopHeadlines({required String category}) async {
    try {
      final response = await dio.get(
          '$urlDefold?category=$category&apikey=$apiKey&lang=$lang&country=$country');
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
