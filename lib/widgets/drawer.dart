import 'package:etc_flutter/widgets/setting.dart';
import 'package:flutter/material.dart';

class DrawerBar extends StatefulWidget {
  @override
  _DrawerBarState createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  var isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              margin: const EdgeInsets.all(1),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.add,
                        size: 40,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.all(12),
                        child: Text(
                          'User Name',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ))
                  ]),
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(SettingPage.routeName);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fact_check,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                "FAQ's",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.short_text_outlined,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Terms & Conditions',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip_sharp,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.star_rate,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Rate Us',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                isLogin ? Icons.logout : Icons.login,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                isLogin ? 'SignOut' : 'Sign in',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                setState(() {
                  isLogin = !isLogin;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
