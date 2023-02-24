import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen4 extends StatelessWidget {
  Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(router.location.toString()),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(builder: (context) {
            return ElevatedButton(
                onPressed: () {
                  // Scaffold.of(context).openDrawer();
                  context.go('/');
                },
                child: Text('Go back to Screen 1'));
          })
        ],
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            Text("First Tile"),
            Text("First Tile"),
            Text("First Tile"),
          ],
        ),
      ),
    );
  }
}
