import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/etc_image/spa.jpg',
  'assets/logo/alBasha.png',
  'assets/logo/dominos.jpg',
  'assets/logo/dream.png',
  'assets/logo/gelato.jpeg',
  'assets/logo/johnny.jpeg',
  'assets/logo/johnnywickets.jpeg',
  'assets/logo/offRoad.jpeg',
  'assets/logo/papajones.png',
];

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(children: [
        CarouselSlider.builder(
          itemCount: (imgList.length / 2).round() - 1,
          itemBuilder: (context, index) {
            final int first = index * 2;
            final int second = first + 1;
            final int third = second + 1;
            return Row(
              children: [first, second, third].map((e) {
                return Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      imgList[e],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            );
          },
          options: CarouselOptions(
              height: 100,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = (imgList.indexOf(url) / 3).round();
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
