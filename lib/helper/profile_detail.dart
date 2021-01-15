import 'package:etc_flutter/subHelper/change_password.dart';
import 'package:etc_flutter/subHelper/mobilenumber.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatefulWidget {
  static const routeName = 'profile-detail';

  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'Profile Info',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 180,
                // width: 150,
                color: Theme.of(context).backgroundColor,
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 120),
                        child: IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {},
                        )),
                    Center(
                      child:
                          Image.asset('assets/etc_image/pub.jpg', height: 100),
                    ),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 20, top: 15),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'First Name',
                      hintText: 'Enter your name'),
                )),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Last Name',
                      hintText: 'Enter your name'),
                )),
            FlatButton(
                minWidth: 350,
                onPressed: () {},
                child: Text(
                  'UPDATE',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                color: Theme.of(context).backgroundColor),
            Divider(color: Colors.black54),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, left: 15.0, right: 25.0, bottom: 10),
                  child: Text(
                    'etcrewardstered@gmail.com',
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, top: 25, right: 15),
                  child: Text('Username'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 15.0, right: 25.0, bottom: 10),
                  child: Text(
                    'etcrewardstered@gmail.com',
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, top: 10, right: 15),
                  child: Text('Alernate email '),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(MobileNumber.routeName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Text(
                      '+971528855525',
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                    child: Text('Mobile no.'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ChangePassword.routeName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 15.0, right: 25.0, bottom: 10),
                    child: Text(
                      'change password',
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, right: 15),
                    child: Text(
                      '. . .',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
