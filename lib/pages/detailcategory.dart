import 'package:docfileapp/domain/entities/exam.dart';
import 'package:docfileapp/pages/addfile.dart';
import 'package:docfileapp/pages/detailexam.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailCategory extends StatefulWidget {
  const DetailCategory({super.key, required this.title});

  final String title;

  @override
  State<DetailCategory> createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  @override
  Widget build(BuildContext context) {    
    final selectedCategory = Provider.of<Category>(context);
    //final List<Exam> elements = selectedCategory.exams;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: const MyDrawer(),
        /*body: ListView.builder(
          itemCount: elements.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(3),
                child: ListTile(
                    title: Text(elements[index]),
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailExam(title: 'Examen 1')));
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailExam(title: 'Examen 2')));
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailExam(title: 'Examen 3')));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailExam(title: 'Examen 4')));
                          break;
                        default:
                          const snackbar = SnackBar(content: Text('wrong'));
                          break;
                      }
                    }));
          },
        ), 
        floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
          Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>
                                      const AddFile()));
        });}, child: const Icon(Icons.add),),*/);
  }
}
