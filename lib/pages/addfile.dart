import 'package:docfileapp/pages/mydrawer.dart';
import 'package:docfileapp/pages/myhomepage.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Creación nueva receta'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Nombre exámen:',
                  style: TextStyle(fontSize: 15),
                ),
                const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresar nombre',
                )),
                const Text(
                  'Fecha realización',
                  style: TextStyle(fontSize: 15),
                ),
                const TextField(
                    decoration: InputDecoration(
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
                    });
                  },
                  items:
                      categorias.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                ),
                const SizedBox(
                    width: 300,
                    height: 300,
                    child: Card(
                      color: Color.fromARGB(248, 138, 210, 227),
                      child: Icon(
                        Icons.add,
                        size: 100,
                      ),
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: const Text('Agregar exámen'),
                )
              ],
            )),
      ),
    );
  }
}
