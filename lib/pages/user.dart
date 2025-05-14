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
    final List<String> elements = [
      'Asma',
      'Diabetes',
      'Hipertensión',
      'Hipotiroidismo'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 250,
            width: 300,
            child: Card(
                color: Color.fromARGB(248, 146, 215, 232),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    ])),
          ),
          const Text(
            'Enfermedades',
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: elements.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(3),
                    child: ListTile(
                      title: Text(elements[index]),
                      tileColor: const Color.fromARGB(248, 117, 208, 231),
                    ));
              },
            ),
          ),
        ],
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
                          maxLines: 3,
                          textAlign: TextAlign.justify,
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
                      ),
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
