import 'package:flutter/material.dart';

class NingHaoHome extends StatefulWidget {
  NingHaoHome({Key key}) : super(key: key);

  _NingHaoHomeState createState() => _NingHaoHomeState();
}

class _NingHaoHomeState extends State<NingHaoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NingHao Learning"),),
      body: Text("data"),
    );
  }
}