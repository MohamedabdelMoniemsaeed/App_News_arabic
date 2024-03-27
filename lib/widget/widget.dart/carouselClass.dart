import 'package:appnews/widget/widget.dart/custom_carousel.dart';
import 'package:flutter/material.dart';

class CarouselClass extends StatelessWidget {
  const CarouselClass({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> images = [
      {"image": "assets/images/business.jpg", "title": "business"},
      {"image": "assets/images/entertainment.jpg", "title": "entertainment"},
      {"image": "assets/images/general.jpg", "title": "general"},
      {"image": "assets/images/health .jpg", "title": "health"},
      {"image": "assets/images/science.jpg", "title": "science"},
      {"image": "assets/images/sports.jpg", "title": "sports"},
      {"image": "assets/images/technology.jpg", "title": "technology"},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Carousel',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: 200,
        padding: const EdgeInsets.all(10),
        child: CustomCarousel(
          visible: 3,
          borderRadius: 20,
          slideAnimationDuration: 500,
          titleFadeAnimationDuration: 300,
          childClick: (int index) {
            print("Clicked $index");
          },
          children: images,
        ),
      ),
    );
  }
}
