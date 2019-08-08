import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;
  final int index;
  CustomRoute(this.index, this.widget)
      : super(
            transitionDuration: const Duration(seconds: 2),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              switch (index) {
                case 1:
                  //淡出过渡路由
                  return FadeTransition(
                    opacity: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                            parent: animation, curve: Curves.fastOutSlowIn)),
                    child: child,
                  );
                  break;
                case 2:
                  //比例转换路由
                  return ScaleTransition(
                    scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation, curve: Curves.fastOutSlowIn)),
                    child: child,
                  );
                  break;
                case 3:
                  //旋转+比例转换路由
                  return RotationTransition(
                    turns: Tween(begin: -1.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation, curve: Curves.fastOutSlowIn)),
                    child: ScaleTransition(
                      scale: Tween(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animation, curve: Curves.fastOutSlowIn)),
                      child: child,
                    ),
                  );
                  break;
                case 4:
                  //幻灯片路由
                  return SlideTransition(
                    position: Tween<Offset>(
                            begin: Offset(0.0, -1.0), end: Offset(0.0, 0.0))
                        .animate(CurvedAnimation(
                            parent: animation, curve: Curves.fastOutSlowIn)),
                    child: child,
                  );
                  break;
                default:
                  
                  break;
              }
            });
}
