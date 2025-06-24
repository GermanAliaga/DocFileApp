import 'package:docfileapp/domain/entities/exam.dart';
import 'package:flutter/material.dart';

class DetailExam extends StatefulWidget {
  const DetailExam({super.key, required this.title, required this.examen});

  final String title;
  final Exam examen;

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
      body: ListView(children: [
      SizedBox(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(children: [
            Text('Fecha examen: ${widget.examen.date}'),],),
            Image.asset(
              widget.examen.images,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Volver',
              ),
            )
          ])),
    ]));
  }
}
