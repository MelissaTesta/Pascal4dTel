import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<String> images = [
  "lib/assets/pascal1.png",
  "lib/assets/pascal2.jpg",
  "lib/assets/pascal3.jpg",
];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider.builder(
           itemCount: images.length,
           options: CarouselOptions(
    height: 300.0,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 2),
    ),
  itemBuilder:(context, index, realIndex) {
    return Container(
      child: Image.asset(images[index], fit: BoxFit.cover,),
    );
  },
)
        ],
      ),
    );
      
      
  }
}