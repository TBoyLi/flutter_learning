import 'package:flutter/material.dart';
import 'package:learnings/bottom_navigation_bar/bottom_navigation_keep_widget.dart';
import 'package:learnings/router/application.dart';


class IndexBottomNavigationBarKeepPage extends StatelessWidget {
  const IndexBottomNavigationBarKeepPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BottomNavigationKeepBar",
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationKeep(),
    );
  }
}

