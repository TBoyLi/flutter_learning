import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnings/router/application.dart';
import 'package:learnings/router/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final Router router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      title: 'Flutter Learning',
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Learning'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = [
    "BottomNavigationBar底部导航",
    "BottomAppBar底部导航1",
    "BottomAppBar底部导航2",
    "自定义路由样式",
    "高斯模糊（毛玻璃）",
    "切换页面，保持各页面状态",
    "制作一个精美的Material风格搜索框",
    "TextField的焦点及动作",
    "微信九宫格效果",
    "标签控件 chip系列",
    "可展开控件 expansion系列",
    "可滑动控件Sliver系列",
    "使用贝塞尔二阶曲线切割图像",
    "用户可以通过拖动以交互方式重新排序的项目的列表",
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: _getItems((index) {
          switch (index) {
            case 0:
              // Navigator.of(context)
              //     .push(CupertinoPageRoute(builder: (BuildContext context) {
              //   return BottomNavigationWidget();
              // }));
              Application.router.navigateTo(context, Routes.bottomNavigationBar, transition: TransitionType.cupertino);
              break;
            case 1:
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return BottomAppWidget1();
              // }));
              Application.router.navigateTo(context, Routes.bottomAppBar1, transition: TransitionType.cupertino);
              break;
            case 2:
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return BottomAppWidget2();
              // }));
              Application.router.navigateTo(context, Routes.bottomAppBar2, transition: TransitionType.cupertino);
              break;
            case 3:
             // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return BottomAppWidget2();
              // }));
              Application.router.navigateTo(context, Routes.customRouterTransition, transition: TransitionType.cupertino);
              break;
            case 4:
              Application.router.navigateTo(context, Routes.frostedGlassStyle, transition: TransitionType.cupertino);
              break;
            case 5:
              Application.router.navigateTo(context, Routes.keepAlive, transition: TransitionType.cupertino);
              break;
          }
        }),
      ),
    );
  }

  List<Widget> _getItems(Function onTap) {
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
                color: Colors.lightBlue,
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
    return widgets;
  }
}
