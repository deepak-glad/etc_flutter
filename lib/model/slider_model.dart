import 'package:flutter/material.dart';

class SliderModel {
  String name;
  String description;
  String logo;
  String image;
  double dist;
  String date;
  String saving;

  SliderModel({
    @required this.name,
    @required this.date,
    @required this.description,
    @required this.dist,
    @required this.image,
    @required this.logo,
    @required this.saving,
  });
}

class SliderProvider with ChangeNotifier {
  List<SliderModel> dataSlider = [
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand ',
      dist: 0,
      image: 'assets/etc_image/resort.jpeg',
      logo: 'assets/logo/alBasha.png',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/resort2.jpeg',
      logo: 'assets/logo/dominos.jpg',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'AL Dhiyafa ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/resort3.jpeg',
      logo: 'assets/logo/dream.png',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/resort4.jpeg',
      logo: 'assets/logo/gelato.jpeg',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/restaurant.jpeg',
      logo: 'assets/logo/johnny.jpeg',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/scuba.jpeg',
      logo: 'assets/logo/johnnywickets.jpeg',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/spa.jpg',
      logo: 'assets/logo/offRoad.jpeg',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/desert.jpeg',
      logo: 'assets/logo/papajones.png',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/irishpub.jpeg',
      logo: 'assets/logo/alBasha.png',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/italian.jpeg',
      logo: 'assets/logo/alBasha.png',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/italian2.jpeg',
      logo: 'assets/logo/alBasha.png',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/polobar.jpg',
      logo: 'assets/logo/alBasha.png',
      saving: '140 AED',
    ),
    SliderModel(
      name: 'Al Basha ',
      date: '30 sept 2021',
      description: 'Habtoor Grand Resort Lebanese Cuisine',
      dist: 0,
      image: 'assets/etc_image/pub.jpg',
      logo: 'assets/logo/alBasha.png',
      saving: '140 AED',
    )
  ];
}
