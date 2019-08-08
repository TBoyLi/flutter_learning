import 'package:flutter/material.dart';
import 'package:learnings/frosted_glass_style/frosted_glass_style_page.dart';
import 'package:learnings/router/application.dart';

class FrostedGlassStyleIndexPage extends StatelessWidget {
  const FrostedGlassStyleIndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FrostedGlassStyle",
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FrostedGlassStylePage(),
    );
  }
}