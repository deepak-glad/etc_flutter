import 'package:flutter/material.dart';

class MobileNumber extends StatefulWidget {
  static const routeName = 'mobile-Number';

  @override
  _MobileNumberState createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  final _editField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            'Change Mobile Number',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Enter Mobile Number',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Theme(
              data: new ThemeData(primaryColor: Colors.black),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty || value.length < 4) {
                      return 'please enter at least 4';
                    }
                    return null;
                  },
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    icon: Icon(Icons.confirmation_number),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).cardColor),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: _editField,
                ),
              ),
            ),
            FlatButton(
                disabledColor: Colors.grey,
                minWidth: 400,
                onPressed: _editField.text.isEmpty ? null : () {},
                child: Text(
                  'Next',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                color: Theme.of(context).cardColor),
          ]),
        ));
  }
}
