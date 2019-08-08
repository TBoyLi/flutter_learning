import 'package:flutter/material.dart';
import 'package:learnings/router/application.dart';

import 'keep_alive_page.dart';

class KeepAliveIndexPage extends StatelessWidget {
  const KeepAliveIndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KeepAlive",
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KeepAlivePage(),
    );
  }
}
