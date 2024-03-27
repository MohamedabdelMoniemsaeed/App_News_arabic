// import 'package:appnews/images/images.dart';
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// // ignore: must_be_immutable
// class CarouselSliderApp extends StatelessWidget {
//   CarouselSliderApp({super.key});
//   List<Newsheadlines> listNewsheadlines = [
//     Newsheadlines(
//       name: 'Entertaiment',
//       images: ImagesApp.entertaiment,
//     ),
//     Newsheadlines(name: 'Health', images: ImagesApp.health),
//     Newsheadlines(name: 'Science', images: ImagesApp.science),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(8),
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height * .15,
//       child: CarouselSlider.builder(
//         itemCount: listNewsheadlines.length,
//         options: CarouselOptions(
//           height: MediaQuery.of(context).size.height * .5,
//           // aspectRatio: 16 / 9,
//           viewportFraction: .5,
//           // initialPage: 0,
//           enableInfiniteScroll: true,
//           reverse: false,
//           autoPlay: true,
//           autoPlayInterval: const Duration(seconds: 3),
//           autoPlayAnimationDuration: const Duration(milliseconds: 800),
//           autoPlayCurve: Curves.fastOutSlowIn,
//           enlargeCenterPage: true,
//           enlargeFactor: 0.5,
//           scrollDirection: Axis.horizontal,
//         ),
//         itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
//           return listNewsheadlines[itemIndex];
//         },
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class Newsheadlines extends StatelessWidget {
//   String name;
//   String images;
//   Newsheadlines({super.key, required this.name, required this.images});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover),
//           borderRadius: BorderRadius.circular(20)),
//       width: MediaQuery.of(context).size.width * .6,
//       child: Center(
//           child: Text(
//         name,
//         style: const TextStyle(color: Colors.white),
//       )),
//     );
//   }
// }
