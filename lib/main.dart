import 'package:etc_flutter/helper/profile_Info.dart';
import 'package:etc_flutter/helper/topics_setting.dart';
import 'package:etc_flutter/helper/transaction.dart';
import 'package:etc_flutter/subHelper/change_password.dart';
import 'package:etc_flutter/subHelper/mobilenumber.dart';
import 'package:etc_flutter/widgets/setting.dart';
import 'package:etc_flutter/model/model.dart';
import 'package:etc_flutter/model/slider_model.dart';
import 'package:etc_flutter/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
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
        routes: {
          SettingPage.routeName: (ctx) => SettingPage(),
          Topics.routeName: (ctx) => Topics(),
          ProfileDetail.routeName: (ctx) => ProfileDetail(),
          Transaction.routeName: (ctx) => Transaction(),
          MobileNumber.routeName: (ctx) => MobileNumber(),
          ChangePassword.routeName: (ctx) => ChangePassword(),
        },
      ),
    );
  }
}
