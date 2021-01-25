import 'package:etc_flutter/widgets/search.dart';
import 'package:flutter/material.dart';

class BottomModel extends StatefulWidget {
  @override
  _BottomModelState createState() => _BottomModelState();
}

class _BottomModelState extends State<BottomModel> {
  var _isCategory = false;
  var _isSubscibed = false;
  var _isOther = false;

  _category(String name) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Checkbox(
              value: this._isCategory,
              onChanged: (value) {
                setState(() {
                  this._isCategory = value;
                });
              })
        ],
      ),
    );
  }

  _subscibed(String name) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Checkbox(
              value: this._isSubscibed,
              onChanged: (value) {
                setState(() {
                  this._isSubscibed = value;
                });
              })
        ],
      ),
    );
  }

  _other(String name) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Checkbox(
              value: this._isOther,
              onChanged: (value) {
                setState(() {
                  this._isOther = value;
                });
              })
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter Offers',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.close,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
        centerTitle: true,
        backgroundColor: Colors.black45,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySearch(),
              Text(
                'Categories',
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black, thickness: 0.8),
              _category('Food & Drink'),
              Divider(
                color: Colors.black38,
              ),
              _category('Brunch'),
              Divider(color: Colors.black38),
              _category('Beauty & Wellness'),
              Divider(color: Colors.black38),
              _category('Sport & Liesure'),
              Divider(color: Colors.black38),
              _category('Family & Local Services'),
              Divider(color: Colors.black38),
              _category('Learning'),
              Divider(color: Colors.black38),
              SizedBox(height: 15),
              Text(
                'Subsciption Type',
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black, thickness: 0.8),
              _subscibed('PLATINUM'),
              Divider(color: Colors.black38),
              _subscibed('GOLD'),
              Divider(color: Colors.black38),
              _subscibed('SILVER'),
              Divider(color: Colors.black38),
              _subscibed('BRONZE'),
              Divider(color: Colors.black38),
              SizedBox(height: 15),
              Text(
                'Other Filters',
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black, thickness: 0.8),
              _other('New Offers'),
              Divider(color: Colors.black38),
              _other('Featured Offers'),
              Divider(color: Colors.black38),
              _other('Entitled Offers'),
              Divider(color: Colors.black38),
              _other('Bookmarked Offers'),
              Divider(color: Colors.black38),
            ],
          ),
        ),
      ),
    );
  }
}
