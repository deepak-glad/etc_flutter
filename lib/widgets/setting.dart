import 'package:etc_flutter/helper/topics_setting.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  static const routeName = 'seeting-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Column(children: [
        Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Topics.routeName);
                },
                child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Topics Subsciptions',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ]),
                ))),
        Divider(
          color: Colors.black54,
        ),
      ]),
    );
  }
}
