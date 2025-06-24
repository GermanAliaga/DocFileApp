import 'package:docfileapp/domain/entities/category.dart';
import 'package:docfileapp/domain/entities/sistem.dart';
import 'package:docfileapp/pages/myhomepage.dart';
import 'package:docfileapp/pages/takephoto.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';

class AddFile extends StatefulWidget {
  const AddFile({super.key, required this.cat});

  final Category cat;

  @override
  State<AddFile> createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
  late TextEditingController _controllerName;
  late TextEditingController _controllerDate;
  
  late Sistema sistem;

  late String name = '';
  late String date = '';
  late String image = '';

  @override
  void initState()
  {
    super.initState();
    _controllerName = TextEditingController();
    _controllerDate = TextEditingController();
  }

  void dispose()
  {
    _controllerName.dispose();
    _controllerDate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Agregar documento'),
      ),
      drawer: const MyDrawer(),
      body: ListView(children: [
        Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Nombre examen:',
                  style: TextStyle(fontSize: 15),
                ),
                TextField(
                  controller: _controllerName,
                  onSubmitted: (String value) {
                    name = value;
                  },
                    decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresar nombre',
                )),
                const Text(
                  'Fecha realización',
                  style: TextStyle(fontSize: 15),
                ),
                TextField(
                  controller: _controllerDate,
                  onSubmitted: (String value) {
                    date = value;
                  },
                    decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresar fecha',
                )),GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TakePhoto()));
                    });
                  },
                  child: const SizedBox(
                    width: 250,
                    height: 250,
                    child: Card(
                      child: Icon(
                        Icons.add,
                        size: 150,
                      ),
                    ),),),
                ElevatedButton(
                  onPressed: () {
                    widget.cat.addExam(name, date, 'assets/images/examen1.png');
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: const Text('Agregar examen'),
                )
              ],
            )),
      ),
    ]));
  }
}
