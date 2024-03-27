import 'package:appnews/images/images.dart';
import 'package:appnews/services/api.dart';
import 'package:appnews/services/api_gnews.dart';
import 'package:flutter/material.dart';

class OneNew extends StatelessWidget {
  final Articles articles;

  const OneNew({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.amber,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width,
      // height: VisualDensity.minimumDensity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(articles.image ?? ImagesApp.defold),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            width: size.width,
            height: size.height * .35,
            // child: Image.asset(
            //   image,
            //   fit: BoxFit.cover,
            // )
          ),
          Text(
            textAlign: TextAlign.end,
            maxLines: 2,
            articles.title ?? 'No title',
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Text(
            maxLines: 2,
            textAlign: TextAlign.end,
            '${articles.description} ' ?? '',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
