import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_project/main.dart';
import 'package:router_project/routes_paths.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(MyApp.title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {context.go('/${RoutePaths.screen2}');},
              child: Text('Go to Screen 2'),
            ),
            ElevatedButton(
              onPressed: () {context.go('/${RoutePaths.screen3}');},
              child: Text('Go to Screen 3'),
            )
          ],
        )),
      );
}
