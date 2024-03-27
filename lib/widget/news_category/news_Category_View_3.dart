import 'package:appnews/widget/news_Top_headlines/news_List_View_3.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final String category;

  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListView(
            category: category,
          )
        ],
      ),
    );
  }
}
