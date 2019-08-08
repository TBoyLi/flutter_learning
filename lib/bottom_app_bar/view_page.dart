
import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  String _title;

  ViewPage(this._title);

  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text(widget._title),
       ),
       body: Center(
         child: Text(widget._title),
       ),
    );
  }
}