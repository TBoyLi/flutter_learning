import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:learnings/router/application.dart';
import 'package:learnings/router/routes.dart';

class NingHaoHome extends StatefulWidget {
  NingHaoHome({Key key}) : super(key: key);

  _NingHaoHomeState createState() => _NingHaoHomeState();
}

class _NingHaoHomeState extends State<NingHaoHome> {
  final List<String> items = [
    "Stepper",
    "Card",
    "PaginatedDataTable",
    "DataTable",
    "Chip",
    "ExpansionPanel",
    "SnackBar",
    "BottomSheet",
    "AlertDialog",
    "SimpleDialog",
    "Date & Time",
    "Slider",
    "Switch",
    "Radio",
    "Checkbox",
    "Form",
    "PopupMenuButton",
    "Button",
    "FloatingActionButton",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NingHao Learning"),
      ),
      body: ListView(
        children: _getItems(onTap: (index) {
          switch (index) {
            case 0:
              Application.router.navigateTo(context, Routes.stepper,
                  transition: TransitionType.cupertino);
              break;
            case 7:
              Application.router.navigateTo(context, Routes.bottomSheet,
                  transition: TransitionType.cupertino);
              break;
            default:
          }
        }),
      ),
    );
  }

  List<Widget> _getItems({Function onTap}) {
    final List<Widget> widgets = [];
    for (int i = 0; i < items.length; i++) {
      widgets.add(InkWell(
        onTap: () {
          onTap(i);
        },
        child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(
                "${items[i]}",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )),
      ));
    }
    widgets.add(Container(
      height: 20,
    ));
    return widgets;
  }
}
