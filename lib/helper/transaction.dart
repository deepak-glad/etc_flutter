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
    );
  }
}
