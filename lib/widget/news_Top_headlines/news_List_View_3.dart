import 'package:appnews/services/api.dart';
import 'package:appnews/services/news_services.dart';
import 'package:appnews/widget/Circular.dart';
import 'package:appnews/widget/error_messege.dart';
import 'package:appnews/widget/news_Top_headlines/news_List_2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatefulWidget {
  final String category;
  const NewsListView({
    super.key,
    required this.category,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices().getTopHeadlines(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articles>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return TheNews(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: ErrorMessege(),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Circular(),
              ),
            );
          }
        });
  }
}
