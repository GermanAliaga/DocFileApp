import 'package:docfileapp/domain/entities/exam.dart';
import 'package:docfileapp/pages/addfile.dart';
import 'package:docfileapp/pages/detailexam.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';
import 'package:docfileapp/domain/entities/category.dart';

class DetailCategory extends StatelessWidget {
  final String title;
  final Category cat;

  const DetailCategory({super.key, required this.title, required this.cat});

  @override
  Widget build(BuildContext context) {
    final List<Exam> elements = cat.exams;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(elements[index].name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailExam(title: elements[index].name, examen: elements[index],),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddFile(cat: cat,)),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}