import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_project/main.dart';
import 'package:router_project/routes_paths.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({Key? key, @required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(error.toString())

          ],
        )),
      );
}
