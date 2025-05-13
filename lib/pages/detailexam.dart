import 'dart:ui_web';

import 'package:docfileapp/pages/mydrawer.dart';
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
        body: const Center(
          child: Column(
            children: [
              Text('Detail Exam page'),
            ],
          ),
          //child: Image.asset('assets/icons/examen.jpg')
        ));
  }
}
