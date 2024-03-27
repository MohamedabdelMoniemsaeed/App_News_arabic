
// ignore: must_be_immutable
import 'package:appnews/services/api.dart';
import 'package:appnews/widget/news_Top_headlines/new_1.dart';
import 'package:flutter/material.dart';

class TheNews extends StatelessWidget {
  TheNews({super.key, required this.articles});

  final List<Articles> articles;

  // bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) => OneNew(articles: articles[index])));
  }
}
