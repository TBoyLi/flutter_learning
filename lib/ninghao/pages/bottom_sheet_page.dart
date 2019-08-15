import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  BottomSheetPage({Key key}) : super(key: key);

  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  void _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16.0,
              ),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text(
                  'Fix you - Coldplay',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
        );
      }
    );
    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(title: Text("BottomSheet")),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Open BottomSheet"),
              onPressed: _openBottomSheet,
            ),
            FlatButton(
              child: Text("Modal BottomSheet"),
              onPressed: _openModalBottomSheet,
            ),
          ],
        ),
      ),
    );
  }
}
