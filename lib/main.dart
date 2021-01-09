import 'package:etc_flutter/model/model.dart';
import 'package:etc_flutter/model/slider_model.dart';
import 'package:etc_flutter/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Data()),
        ChangeNotifierProvider(create: (ctx) => SliderProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Proxima',
          primaryColor: Colors.white,
          backgroundColor: Color.fromRGBO(42, 175, 138, 1),
          cardColor: Color.fromRGBO(58, 68, 140, 1),
        ),
        home: MyHomeScreen(),
      ),
    );
  }
}
