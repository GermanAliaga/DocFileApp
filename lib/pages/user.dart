import 'package:docfileapp/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          children: [
            Icon(
              Icons.person,
              size: 100,
            ),
            Text(
              'Jhon Doe',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Edad: 25',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Altura: 180 cm',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Peso: 100 kg',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                    content: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text(
                        'Nombre enfermedad',
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingresar nombre',
                      )),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const User()));
                        },
                        child: const Text('Agregar enfermedad'),
                      )
                    ],
                  ),
                ))),
        child: const Icon(
          Icons.add,
          size: 40,
          semanticLabel: 'AddSickness',
        ),
      ),
    );
  }
}
