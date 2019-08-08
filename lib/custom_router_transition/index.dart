import 'package:flutter/material.dart';
import 'package:learnings/router/application.dart';
import 'custom_router_transition_page.dart';

class IndexCustomRouterTransitionPage extends StatelessWidget {
  const IndexCustomRouterTransitionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomRouterTransition',
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomRouterTransitionPage(),
    );
  }
}