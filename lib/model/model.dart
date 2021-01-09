import 'package:flutter/material.dart';

class Icondata {
  String name;
  String icon;
  Icondata({
    @required this.name,
    @required this.icon,
  });
}

class Data with ChangeNotifier {
  List<Icondata> list = [
    Icondata(name: 'Food & Drink', icon: 'assets/icon/food.png'),
    Icondata(name: 'Brunch', icon: 'assets/icon/brunch.png'),
    Icondata(name: 'Beauty & Wellness', icon: 'assets/icon/beauty.png'),
    Icondata(name: 'Sport & Leisure', icon: 'assets/icon/sport.png'),
    Icondata(name: 'Family & Local Services', icon: 'assets/icon/family.png'),
    Icondata(name: 'Learning', icon: 'assets/icon/learning.png'),
  ];
}
