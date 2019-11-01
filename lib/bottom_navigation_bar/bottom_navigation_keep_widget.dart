import 'package:flutter/material.dart';
import 'package:learnings/bottom_navigation_bar/page/card_page.dart';
import 'package:learnings/bottom_navigation_bar/page/category_page.dart';
import 'package:learnings/bottom_navigation_bar/page/home_page.dart';
import 'package:learnings/bottom_navigation_bar/page/member_page.dart';

class BottomNavigationKeep extends StatefulWidget {
  BottomNavigationKeep({Key key}) : super(key: key);

  @override
  _BottomNavigationKeepState createState() => _BottomNavigationKeepState();
}

class _BottomNavigationKeepState extends State<BottomNavigationKeep>
    with SingleTickerProviderStateMixin {
  
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  var _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          CategoryPage(),
          CardPage(),
          MemberPage()
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
        },
        type: BottomNavigationBarType.fixed,
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
        ],
      ),
    );
  }
}
