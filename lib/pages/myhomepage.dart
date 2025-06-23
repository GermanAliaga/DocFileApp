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
  late TextEditingController _controller;

  @override
  void initState()
  {
    super.initState();
    _controller = TextEditingController();
  }
  void dispose()
  {
    _controller.dispose();
  }

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
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(3),
              child: ListTile(
                title: Text(elements[index]),
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
        floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
         showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                    content: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text(
                        'Nombre categoria',
                      ),
                      TextField(
                        controller: _controller,  
                        onChanged: (value) {
                          //enfermedad = value;
                        },        
                          maxLines: 3,
                          textAlign: TextAlign.justify,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ingresar nombre',
                          )),
                      ElevatedButton(
                        onPressed: () {
                          //usuario.addSickness(enfermedad);
                        },
                        child: const Text('Agregar categoria'),
                      ),
                    ],
                  ),
                )));
        const Icon(
          Icons.add,
          size: 40,
          semanticLabel: 'AddCategory',
        );
        });}, child: const Icon(Icons.add),),
    );
  }
}
