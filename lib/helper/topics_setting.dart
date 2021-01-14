import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  static const routeName = 'topics-page';
  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  var _isChechBoxBakery = false;
  var _isChechBoxBar = false;
  var _isChechBoxBeauty = false;
  var _isChechBoxbrunch = false;
  var _isChechBoxDesert = false;
  var _isChechBoxElectronics = false;
  var _isChechBoxFamily = false;
  var _isChechBoxFast = false;
  var _isChechBoxFood = false;
  var _isChechBoxHome = false;
  var _isChechBoxLearning = false;
  var _isChechBoxLeisure = false;
  var _isChechBoxDeals = false;
  var _isChechBoxRestaurants = false;
  var _isChechBoxRetail = false;
  var _isChechBoxSpa = false;
  var _isChechBoxSport = false;
  var _isChechBoxSportLeisure = false;
  var _isChechBoxTravel = false;
  var _isChechBoxWellness = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Topics',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bakery',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxBakery,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxBakery = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bars',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxBar,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxBar = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Beauty & Wellness',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxBeauty,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxBeauty = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brunch',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxbrunch,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxbrunch = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dessert',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxDesert,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxDesert = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Electronics',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxElectronics,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxElectronics = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Family & Local Services',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxFamily,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxFamily = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fast Food',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxFast,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxFast = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Food & Drink',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxFood,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxFood = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home Services',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxHome,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxHome = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Learning',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxLearning,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxLearning = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Leisure',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxLeisure,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxLeisure = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Online Deals',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxDeals,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxDeals = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Restaurant',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxRestaurants,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxRestaurants = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Retail',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxRetail,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxRetail = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Spa',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxSpa,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxSpa = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sport',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxSport,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxSport = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sport & Leisure',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxSportLeisure,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxSportLeisure = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tours & Travel',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxTravel,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxTravel = value;
                        });
                      })
                ],
              ),
            ),
            Divider(color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wellness',
                    style: TextStyle(fontSize: 18),
                  ),
                  Checkbox(
                      value: this._isChechBoxWellness,
                      onChanged: (bool value) {
                        setState(() {
                          this._isChechBoxWellness = value;
                        });
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
