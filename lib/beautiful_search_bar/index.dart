import 'package:flutter/material.dart';

import 'beautiful_search_bar_page.dart';

class BeautifulSearchBarIndexPage extends StatelessWidget {
  const BeautifulSearchBarIndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData.light(),
      home: BeautifulSearchBarPage(),
    );
  }
}
