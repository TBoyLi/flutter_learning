import 'package:flutter/material.dart';
import 'package:learnings/bottom_navigation_bar/page/card_page.dart';
import 'package:learnings/bottom_navigation_bar/page/category_page.dart';
import 'package:learnings/bottom_navigation_bar/page/home_page.dart';
import 'package:learnings/bottom_navigation_bar/page/member_page.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key key}) : super(key: key);

  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List<Widget> list = [];
  final _bottomNavigationColor = Colors.blue;
  @override
  void initState() {
    super.initState();
    list
      ..add(HomePage())
      ..add(CategoryPage())
      ..add(CardPage())
      ..add(MemberPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(
                  "HOME",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                ),
                title: Text(
                  "Category",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_giftcard,
                ),
                title: Text(
                  "Card",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin,
                ),
                title: Text(
                  "Member",
                )),
          ]),
    );
  }
}
