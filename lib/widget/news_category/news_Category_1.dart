import 'package:appnews/widget/news_category/news_Category_View_3.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Newsheadlines extends StatelessWidget {
  String name;
  String images;
  Newsheadlines({
    super.key,
    required this.name,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(
            category: name,
          ),
        ));
      },
      child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(images), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width * .6,
          child: Center(
            child: Text(name,
                style: const TextStyle(
                    backgroundColor: Colors.white24,
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          )),
    );
  }
}
