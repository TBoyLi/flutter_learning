import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:learnings/beautiful_search_bar/index.dart';
import 'package:learnings/bottom_app_bar/index1.dart';
import 'package:learnings/bottom_app_bar/index2.dart';
import 'package:learnings/bottom_app_bar/view_page.dart';
import 'package:learnings/bottom_navigation_bar/index.dart';
import 'package:learnings/custom_router_transition/index.dart';
import 'package:learnings/frosted_glass_style/index.dart';
import 'package:learnings/keep_alive/index.dart';
import 'package:learnings/ninghao/index.dart';
import 'package:learnings/ninghao/pages/bottom_sheet_page.dart';
import 'package:learnings/ninghao/pages/stepper_page.dart';
import 'package:learnings/textfields_focus/index.dart';

class Routes {
  static String root = '/';
  static String ningHaoRoot = '/ning_hao_root';

  static String bottomSheet = '/ning_hao_root/bottom_sheet';
  static String stepper = '/ning_hao_root/stepper';

  static String bottomNavigationBar = '/bottom_navigation_bar';
  static String bottomAppBar1 = '/bottom_app_bar1';
  static String bottomAppBar2 = '/bottom_app_bar2';
  static String customRouterTransition = '/custom_router_transition';
  static String keepAlive = '/keep_alive';
  static String frostedGlassStyle = '/frostedGlassStyle';
  static String beautifulSearchBar = '/beautifulSearchBar';
  static String textfiedldsFocus = '/textfiedldsFocus';
  static String viewPager = '/view_page';

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('ERROR====>ROUTE WAS NOT FONUND!!!');

    });

    router.define(ningHaoRoot,  handler: Handler(
        handlerFunc: (BuildContext buildContext, Map<String, List<String>> params) {
            return NingHaoIndexPage();
        }
    ));

    router.define(bottomNavigationBar, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return IndexBottomNavigationBarPage();
    }));

    router.define(bottomAppBar1, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return IndexBottomAppBarPage1();
    }));

    router.define(bottomAppBar2, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return IndexBottomAppBarPage2();
    }));

    router.define(customRouterTransition, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return IndexCustomRouterTransitionPage();
    }));

    router.define(viewPager, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      var title = params['title'].first;
      return ViewPage(title);
    }));
    
    router.define(keepAlive, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return KeepAliveIndexPage();
    }));

    router.define(frostedGlassStyle, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return FrostedGlassStyleIndexPage();
    }));

    router.define(beautifulSearchBar, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return BeautifulSearchBarIndexPage();
    }));

    router.define(textfiedldsFocus, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return TextfieldsFocusIndexPage();
    }));

    router.define(bottomSheet, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return BottomSheetPage();
    }));
    router.define(stepper, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return StepperPage();
    }));
  }
}
