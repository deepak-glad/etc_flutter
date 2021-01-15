import 'package:etc_flutter/helper/profile_detail.dart';
import 'package:etc_flutter/helper/transaction.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  _subscriptionDetail(String name, String detail) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(
            detail,
            style: TextStyle(
              color: Theme.of(context).cardColor,
            ),
          )
        ],
      ),
    );
  }

  _bottomDetail(String name, var icon, var routename) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routename);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 25),
        margin: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
        height: 110,
        width: MediaQuery.of(context).size.width / 3 - 17,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
              color: Theme.of(context).cardColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).backgroundColor,
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 0.5,
                          spreadRadius: 0.5)
                    ]),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      padding: const EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 0.5,
                              // spreadRadius: .5,
                            ),
                          ]),
                    ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.horizontal(left: ),
                    // ),
                    Positioned.fill(
                        bottom: -150,
                        // left: -50,
                        // right: -50,
                        left: -80,
                        right: -80,
                        top: 80,
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(150),
                                right: Radius.circular(150)),
                            // shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        )),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Expats Teachers Club',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              color: Colors.yellow,
                              height: 90,
                              width: 130,
                              margin: const EdgeInsets.only(left: 15, top: 30),
                              child: Image.asset(
                                'assets/etc_image/pub.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                'etcewardsters@gm',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'EXPATS SCHOOL',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor),
                            ),
                            SizedBox(height: 5),
                            Text('Texter Pal',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            Text('ID:ETC_1235452_5285',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            SizedBox(height: 5),
                            Text('Member Since',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            Text('16 Dec 2020 14:32',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.asset('assets/etc_image/pub.jpg'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // child: Stack(
              //   children: [
              //     Container(
              //       // padding: const EdgeInsets.all(15),
              //       margin: const EdgeInsets.all(20),
              //       decoration: BoxDecoration(
              //           color: Theme.of(context).cardColor,
              //           borderRadius: BorderRadius.circular(20),
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.black54,
              //               blurRadius: 0.5,
              //               // spreadRadius: .5,
              //             ),
              //           ]),
              //     ),
              //     Positioned.fill(
              //         // bottom: -500,
              //         // left: -550,
              //         // right: -550,
              //         top: 100,
              //         child: Container(
              //           margin: const EdgeInsets.all(20),
              //           decoration: BoxDecoration(
              //             shape: BoxShape.rectangle,
              //             color: Colors.green,
              //           ),
              //         ))
              //   ],
              // ),
            ),
            Container(
              height: 65,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Redemptions',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Avg. Savings',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Text(
                          '170 AED',
                          style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Subsciption Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _subscriptionDetail('Plan', 'Platinum-360'),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Divider(color: Colors.black),
            ),
            _subscriptionDetail('Subscribed From', '16 Dec 2020 14:32'),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Divider(color: Colors.black),
            ),
            _subscriptionDetail('Expires On', '11 Dec 2021 14:32'),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Divider(color: Colors.black),
            ),
            _subscriptionDetail('Status', 'SUSCRIBED'),
            Container(
              color: Colors.grey[200],
              height: 140,
              child: Row(
                children: [
                  _bottomDetail('Trasactions', Icons.account_balance_wallet,
                      Transaction.routeName),
                  _bottomDetail('Refer A Friend', Icons.person_add,
                      ProfileDetail.routeName),
                  _bottomDetail('Personal Info', Icons.emoji_emotions,
                      ProfileDetail.routeName),
                ],
              ),
            ),
            Text('')
          ],
        ),
      ),
    );
  }
}
