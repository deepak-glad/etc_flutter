import 'package:etc_flutter/helper/category.dart';
import 'package:etc_flutter/helper/slider_container.dart';
import 'package:etc_flutter/widgets/search.dart';
import 'package:flutter/material.dart';

import 'carousel_slider.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MySearch(), //sometime this will change..................
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'Featured Offers',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            SliderDetail(),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'Popular Brands',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            CarouselWithIndicatorDemo(),
          ],
        ),
      ),
    );
  }
}
