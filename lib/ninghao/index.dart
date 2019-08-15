import 'package:flutter/material.dart';
import 'package:learnings/router/application.dart';

import 'ning_hao_home.dart';

class NingHaoIndexPage extends StatelessWidget {
  const NingHaoIndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NingHao Learning",
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: NingHaoHome(),
    );
  }
}
