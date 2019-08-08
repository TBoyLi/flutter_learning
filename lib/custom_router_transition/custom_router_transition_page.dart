import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:learnings/bottom_app_bar/view_page.dart';
import 'package:learnings/custom_router_transition/custom_route.dart';
import 'package:learnings/router/application.dart';
import 'package:learnings/router/routes.dart';

class CustomRouterTransitionPage extends StatefulWidget {
  CustomRouterTransitionPage({Key key}) : super(key: key);

  _CustomRouterTransitionPageState createState() =>
      _CustomRouterTransitionPageState();
}

class _CustomRouterTransitionPageState
    extends State<CustomRouterTransitionPage> {
  final List<String> items = ["淡出过渡路由", "比例转换路由", "旋转+比例转换路由", "幻灯片路由"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("自定义路由"),
        ),
        body: ListView(children: _getItems((index) {
          switch (index) {
            case 0:
              Navigator.of(context)
                  .push(CustomRoute(1, ViewPage(items[index])));

              // fluro 参数传中文错误
              // Application.router.navigateTo(
              //     context, "${Routes.viewPager}?title=$index",
              //     transition: TransitionType.fadeIn);
              break;
            case 1:
              Navigator.of(context)
                  .push(CustomRoute(2, ViewPage(items[index])));
              break;
            case 2:
              Navigator.of(context)
                  .push(CustomRoute(3, ViewPage(items[index])));
              break;
            case 3:
              Navigator.of(context)
                  .push(CustomRoute(4, ViewPage(items[index])));
              break;
            default:
              break;
          }
        })));
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
