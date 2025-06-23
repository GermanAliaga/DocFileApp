import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';

class TakePhoto extends StatefulWidget {
  const TakePhoto({super.key});

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Tomar fotografía'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 400,
              child: Card(
                child: Icon(
                        Icons.add,
                        size: 100,)
              ),
            )
          ],
        ),
      )
    );
  }
}
