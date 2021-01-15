import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  static const routeName = '/change-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'Change Password',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Theme(
        data: new ThemeData(primaryColor: Theme.of(context).cardColor),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'Current Password',
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).cardColor),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                // controller: _titleController,
              ),
              SizedBox(height: 10),
              TextField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).cardColor),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                // controller: _titleController,
              ),
              SizedBox(height: 10),
              TextField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).cardColor),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                // controller: _titleController,
              ),
              SizedBox(height: 10),
              FlatButton(
                  minWidth: 400,
                  onPressed: () {},
                  child: Text(
                    'UPDATE',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  color: Theme.of(context).cardColor),
            ],
          ),
        ),
      ),
    );
  }
}
