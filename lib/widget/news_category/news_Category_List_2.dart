// ignore: must_be_immutable

import 'package:appnews/images/images.dart';
import 'package:appnews/widget/news_category/news_Category_1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderApp extends StatelessWidget {
  List<Newsheadlines> listNewsheadlines = [
    Newsheadlines(
      name: 'عام',
      images: ImagesApp.general,
      category: 'general',
    ),
    Newsheadlines(
      name: 'الصحة',
      images: ImagesApp.health,
      category: 'health',
    ),
    Newsheadlines(
      name: 'علوم',
      images: ImagesApp.science,
      category: 'science',
    ),
    Newsheadlines(
      name: 'ترفيه',
      images: ImagesApp.entertainment,
      category: 'entertainment',
    ),
    Newsheadlines(
      name: 'اعمال',
      images: ImagesApp.business,
      category: 'business',
    ),
    Newsheadlines(
      name: 'رياضة',
      images: ImagesApp.sports,
      category: 'sports',
    ),
    Newsheadlines(
      name: 'تكنولوجيا',
      images: ImagesApp.technology,
      category: 'technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .15,
      child: CarouselSlider.builder(
        itemCount: listNewsheadlines.length,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * .5,
          // aspectRatio: 16 / 9,
          viewportFraction: .5,
          // initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.5,
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return listNewsheadlines[itemIndex];
        },
      ),
    );
  }
}
