import 'dart:ui';

/**
 * 使用BackdropFilter实现毛玻璃效果,且子部件需要设置Opacity
 * 使用这个部件的代价很高，尽量少用
 * ImageFilter.blur的sigmaX/Y决定了毛玻璃的模糊程度，值越高越模糊
 * 一般来说，为了防止模糊效果绘制出边界，需要使用ClipRect Widget包裹
 */

import 'package:flutter/material.dart';

class FrostedGlassStylePage extends StatefulWidget {
  FrostedGlassStylePage({Key key}) : super(key: key);

  _FrostedGlassStylePageState createState() => _FrostedGlassStylePageState();
}

class _FrostedGlassStylePageState extends State<FrostedGlassStylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FrostedGlassStyle"),
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: new FlutterLogo()),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        "Frosted",
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
