import 'package:docfileapp/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class AddFile extends StatefulWidget {
  const AddFile({
    super.key,
  });

  @override
  State<AddFile> createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Add File'),
        ),
        drawer: const MyDrawer(),
        body: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'AddFile page',
              ),
            ])));
  }
}
