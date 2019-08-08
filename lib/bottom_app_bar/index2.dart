import 'package:flutter/material.dart';

import 'bottom_app_widget2.dart';

class IndexBottomAppBarPage2 extends StatelessWidget {
  const IndexBottomAppBarPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomAppWidget2(),
    );
  }
}