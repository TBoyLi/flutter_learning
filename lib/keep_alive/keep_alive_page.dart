import 'package:flutter/material.dart';
import 'package:learnings/keep_alive/home_page.dart';

class KeepAlivePage extends StatefulWidget {
  KeepAlivePage({Key key}) : super(key: key);

  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<Widget> _tabViews = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  List<Widget> _tabs = [
    Tab(icon: Icon(Icons.directions_car)),
    Tab(icon: Icon(Icons.directions_transit)),
    Tab(icon: Icon(Icons.directions_bike)),
    Tab(icon: Icon(Icons.directions_boat)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabViews.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KeepAlive"),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(controller: _tabController, children: _tabViews),
    );
  }
}
