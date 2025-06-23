import 'package:docfileapp/domain/entities/category.dart';
import 'package:docfileapp/domain/entities/exam.dart';
import 'package:docfileapp/pages/myhomepage.dart';
import 'package:docfileapp/pages/takephoto.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddFile extends StatefulWidget {
  const AddFile({super.key});

  @override
  State<AddFile> createState() => _AddFileState();
}

const List<String> categorias = <String>[
  'Cardiología',
  'Traumatología',
  'Diabetología',
  'Kinesiología'
];

class _AddFileState extends State<AddFile> {
  String dropdownvalue = categorias.first;
  late TextEditingController _controllerName;
  late TextEditingController _controllerDate;

  late String name;
  late String category;
  late String date;
  late String image;

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
  final medicCategory = Provider.of<Category>(context);

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
                )),
                const Text(
                  'Categoría',
                  style: TextStyle(fontSize: 15),
                ),
                DropdownButton<String>(
                  value: dropdownvalue,
                  onChanged: (String? value) {
                    setState(() {
                      dropdownvalue = value!;
                      category = value;
                    });
                  },
                  items:
                      categorias.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                ),
                const Text('Incluir imagen'),
                GestureDetector(
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
                    medicCategory.addExam(name, category, date, image);
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
