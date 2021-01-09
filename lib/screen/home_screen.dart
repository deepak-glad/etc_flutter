import 'package:etc_flutter/screen/calender.dart';
import 'package:etc_flutter/screen/favorite.dart';
import 'package:etc_flutter/screen/map.dart';
import 'package:etc_flutter/screen/notification.dart';
import 'package:etc_flutter/screen/offer.dart';
import 'package:etc_flutter/screen/profile.dart';
import 'package:etc_flutter/widgets/drawer.dart';
import 'package:etc_flutter/widgets/home1.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _currentIndex = 3;
  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _children = [
    CalenderScreen(),
    OfferScreen(),
    MapScreen(),
    Home1(),
    FavoriteScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _currentIndex == 0
            ? AppBar(
                title: Text(
                  'Events',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                centerTitle: true,
                backgroundColor: Theme.of(context).backgroundColor,
                iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
              )
            : _currentIndex == 1
                ? AppBar(
                    title: Text(
                      'Offers',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    centerTitle: true,
                    backgroundColor: Theme.of(context).backgroundColor,
                    iconTheme:
                        IconThemeData(color: Theme.of(context).primaryColor),
                  )
                : _currentIndex == 2
                    ? AppBar(
                        title: Text(
                          'Map',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        centerTitle: true,
                        backgroundColor: Theme.of(context).backgroundColor,
                        iconTheme: IconThemeData(
                            color: Theme.of(context).primaryColor),
                      )
                    : _currentIndex == 3
                        ? AppBar(
                            title: Image.asset(
                              'assets/logo_etc.png',
                              height: 100,
                              // width: 100,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fitHeight,
                            ),
                            centerTitle: true,
                            elevation: 0.0,
                          )
                        : _currentIndex == 4
                            ? AppBar(
                                title: Text(
                                  'Favorites',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                                centerTitle: true,
                                backgroundColor:
                                    Theme.of(context).backgroundColor,
                                iconTheme: IconThemeData(
                                    color: Theme.of(context).primaryColor),
                              )
                            : _currentIndex == 5
                                ? AppBar(
                                    title: Text(
                                      'Notifications',
                                      style: TextStyle(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    centerTitle: true,
                                    backgroundColor:
                                        Theme.of(context).backgroundColor,
                                    iconTheme: IconThemeData(
                                        color: Theme.of(context).primaryColor),
                                  )
                                : AppBar(
                                    title: Text(
                                      'Profile',
                                      style: TextStyle(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    centerTitle: true,
                                    backgroundColor:
                                        Theme.of(context).backgroundColor,
                                    iconTheme: IconThemeData(
                                        color: Theme.of(context).primaryColor),
                                  ),
        drawer: DrawerBar(),
        body: _children[_currentIndex],
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.grey[200],
              // primaryColor: Colors.white,
              // textTheme: Theme.of(context)
              //     .textTheme
              //     .copyWith(caption: TextStyle(color: Colors.grey))
            ),
            child: BottomNavigationBar(
              // type: BottomNavigationBarType.fixed,
              selectedItemColor: Theme.of(context).cardColor,
              currentIndex: _currentIndex,
              onTap: onTapped,
              unselectedItemColor: Colors.grey,
              iconSize: 32,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              items: [
                BottomNavigationBarItem(
                    icon: _currentIndex != 0
                        ? Icon(
                            Icons.calendar_today_outlined,
                          )
                        : Icon(
                            Icons.calendar_today,
                          ),
                    label: 'Calender'),
                BottomNavigationBarItem(
                    icon: _currentIndex != 1
                        ? Icon(
                            Icons.local_offer_outlined,
                          )
                        : Icon(
                            Icons.local_offer,
                          ),
                    label: 'Offer'),
                BottomNavigationBarItem(
                    icon: _currentIndex != 2
                        ? Icon(
                            Icons.location_city_outlined,
                          )
                        : Icon(
                            Icons.location_city,
                          ),
                    label: 'location'),
                BottomNavigationBarItem(
                    icon: _currentIndex != 3
                        ? Icon(
                            Icons.home_outlined,
                          )
                        : Icon(
                            Icons.home,
                          ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: _currentIndex != 4
                        ? Icon(
                            Icons.favorite_border,
                          )
                        : Icon(
                            Icons.favorite,
                          ),
                    label: 'Favorite'),
                BottomNavigationBarItem(
                    icon: _currentIndex != 5
                        ? Icon(
                            Icons.notifications_outlined,
                          )
                        : Icon(
                            Icons.notifications,
                          ),
                    label: 'Notification'),
                BottomNavigationBarItem(
                    icon: _currentIndex != 6
                        ? Icon(
                            Icons.person_outline,
                          )
                        : Icon(
                            Icons.person,
                          ),
                    label: 'Person'),
              ],
            )));
  }
}
