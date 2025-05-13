import 'package:docfileapp/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class DetailCategory extends StatefulWidget {
  const DetailCategory({super.key, required this.title});

  final String title;

  @override
  State<DetailCategory> createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  @override
  Widget build(BuildContext context) {
    final List<String> elements = [
      'Examen 1',
      'Examen 2',
      'Examen 3',
      'Examen 4'
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: const MyDrawer(),
        body: ListView.builder(
          itemCount: elements.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(3),
                child: ListTile(
                  title: Text(elements[index]),
                  tileColor: const Color.fromARGB(248, 87, 221, 255),
                ));
          },
        ));
  }
}
