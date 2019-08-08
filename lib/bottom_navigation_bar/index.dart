import 'package:flutter/material.dart';
import 'package:learnings/bottom_navigation_bar/bottom_navigation_widget.dart';
import 'package:learnings/router/application.dart';

class IndexBottomNavigationBarPage extends StatelessWidget {
  const IndexBottomNavigationBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar',
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationWidget(),
    );
  }
}