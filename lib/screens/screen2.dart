import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_project/main.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text(MyApp.title),),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {context.go('/');},
                child: Text('Go back to Screen 1'))

          ],
        )),
  );
}
