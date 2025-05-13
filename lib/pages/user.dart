import 'package:docfileapp/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({
    super.key,
  });

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('User'),
        ),
        drawer: const MyDrawer(),
        body: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'User page',
              ),
            ])));
  }
}
