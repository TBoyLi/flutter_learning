/**
 * 实现原理：
 * 使用FocusNode获取当前textField焦点
 * 在TextNode的textInputAction属性中选择键盘action（next/down）
 * 对于最后一个之前的TextField：在onSubmitted属性中解除当前focus状态
 * 再聚焦下一个FocusNode:FocusScope.of(context).requestFocus( nextFocusNode );
 * 对于最后一个TextField,直接解除focus并提交表单
 */

import 'package:flutter/material.dart';
import 'package:learnings/router/application.dart';
import 'package:learnings/textfields_focus/textfields_focus_page.dart';

class TextfieldsFocusIndexPage extends StatefulWidget {
  TextfieldsFocusIndexPage({Key key}) : super(key: key);

  _TextfieldsFocusIndexPageState createState() => _TextfieldsFocusIndexPageState();
}

class _TextfieldsFocusIndexPageState extends State<TextfieldsFocusIndexPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextfieldsFocus",
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: TextfieldsFocusPage(),
    );
  }
}