import 'package:docfileapp/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class AddFile extends StatefulWidget {
  const AddFile({super.key, required this.title});

  final String title;

  @override
  State<AddFile> createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
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
                'AddFile page',
              ),
            ])));
  }
}
