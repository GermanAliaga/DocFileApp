import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';

class DetailExam extends StatefulWidget {
  const DetailExam({super.key, required this.title});

  final String title;

  @override
  State<DetailExam> createState() => _DetailExamState();
}

class _DetailExamState extends State<DetailExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const MyDrawer(),
      body: SizedBox(
          child: Column(children: [
        Image.asset(
          'assets/images/examen1.png',
        ),
        FloatingActionButton(onPressed: () {})
      ])),
    );
  }
}
