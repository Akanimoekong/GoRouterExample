import 'package:go_router/go_router.dart';
import 'package:router_project/routes_paths.dart';
import 'package:flutter/material.dart';
import 'package:router_project/screens/screen2.dart';
import 'package:router_project/screens/screen3.dart';
import 'package:router_project/screens/screen4.dart';

 class MyRoutes {

  var widgetlist = [
    GoRoute(
      path: RoutePaths.screen2,
      builder: (BuildContext context, GoRouterState state) => Screen2(),
    ),
    GoRoute(
      path: RoutePaths.screen3,
      builder: (BuildContext context, GoRouterState state) => Screen3(),
    ),
    GoRoute(
      path: RoutePaths.screen4,
      builder: (BuildContext context, GoRouterState state) => Screen4(),
    ),
  ];
}