import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:learnings/bottom_app_bar/view_page.dart';
import 'package:learnings/router/application.dart';
import 'package:learnings/router/routes.dart';

class BottomAppWidget1 extends StatefulWidget {
  BottomAppWidget1({Key key}) : super(key: key);

  _BottomAppWidget1State createState() => _BottomAppWidget1State();
}

class _BottomAppWidget1State extends State<BottomAppWidget1> {
  int _index = 0;
  final List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages..add(ViewPage("HOME"))..add(ViewPage("Me"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_index],
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          onPressed: () {
            Application.router.navigateTo(context, '${Routes.viewPager}?title=ViewPage1', transition: TransitionType.cupertino);
          },
          backgroundColor: Colors.lightBlueAccent,
          tooltip: "Center",
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: SizedBox(
              height: 48,
              width: 48,
              child: Icon(Icons.add, color: Colors.lightBlueAccent),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlueAccent,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.near_me),
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                },
              )
            ],
          ),
        ));
  }
}
