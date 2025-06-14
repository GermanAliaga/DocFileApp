import 'package:docfileapp/pages/detailcategory.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> elements = [
      'Cardiología',
      'Traumatología',
      'Diabetología',
      'Kinesiología'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Inicio'),
      ),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(3),
              child: ListTile(
                title: Text(elements[index]),
                tileColor: const Color.fromARGB(248, 117, 208, 231),
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DetailCategory(title: 'Cardiología')));
                      break;
                    case 1:
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailCategory(
                                  title: 'Traumatología')));
                      break;
                    case 2:
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DetailCategory(title: 'Diabetología')));
                      break;
                    case 3:
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DetailCategory(title: 'Kinesiología')));
                      break;
                    default:
                      const snackbar = SnackBar(content: Text('wrong'));
                      break;
                  }
                },
              ));
        },
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
                        'Nombre especialidad',
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
                                  builder: (context) => const MyHomePage()));
                        },
                        child: const Text('Agregar especialidad'),
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
      drawer: const MyDrawer(),
    );
  }
}
