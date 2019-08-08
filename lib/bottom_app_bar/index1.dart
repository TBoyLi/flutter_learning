import 'package:flutter/material.dart';

import 'bottom_app_widget1.dart';

class IndexBottomAppBarPage1 extends StatelessWidget {
  const IndexBottomAppBarPage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomAppWidget1(),
    );
  }
}
