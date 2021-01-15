import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  static const routeName = 'Trasaction-detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'Transactions History',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            height: 160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 0.5, spreadRadius: .2)
                ]),
            child: Column(
              children: [
                Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    color: Theme.of(context).backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '50 % off Home Delivery',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Domino's Pizza- Al Karama"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.timelapse),
                    Text("26 Dec 2020 15:28"),
                  ],
                ),
                Divider(color: Colors.black),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text('Transaction Id:'),
                      Text(
                        '  602',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(children: [
                    Text('Discount Code:'),
                    Text(
                      ' 5851FTGYH51',
                      style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 0.5, spreadRadius: .2)
                ]),
            child: Column(
              children: [
                Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    color: Theme.of(context).backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '50 % off Home Delivery',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Domino's Pizza- Al Karama"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.timelapse),
                    Text("26 Dec 2020 15:28"),
                  ],
                ),
                Divider(color: Colors.black),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text('Transaction Id:'),
                      Text(
                        '  602',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(children: [
                    Text('Discount Code:'),
                    Text(
                      ' 5851FTGYH51',
                      style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
