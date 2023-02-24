import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_project/routes_paths.dart';
import 'package:router_project/screens/ErrorScreen.dart';
import 'package:router_project/screens/screen1.dart';
import 'package:router_project/screens/screen2.dart';
import 'package:router_project/screens/screen3.dart';
import 'package:router_project/screens/screen4.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

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
  static const String title = 'GoRouter Routes';
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      );

  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(error:state.error),
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            Screen1(),
        routes: [
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
        ],
      )
    ],
  );
}


