import 'package:docfileapp/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key, required this.title});

  final String title;

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'User page',
            ),
          ],
        ),
      ),
    );
  }
}
