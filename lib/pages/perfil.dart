import 'package:docfileapp/domain/entities/user.dart';
import 'package:docfileapp/pages/edituser.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  Perfil usuario = Provider.of<Perfil>(context);
  List<String> elements = usuario.sickness;
  late String enfermedad;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        actions: <Widget>[IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const EditUser()));}, icon: const Icon(Icons.edit))],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 250,
            width: 300,
            child: Card(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.person,
                        size: 100,
                      ),
                      Text(
                        usuario.name,
                      ),
                      Text(
                        'Edad: ${usuario.age}',
                      ),
                      Text(
                        'Altura: ${usuario.height} cm',
                      ),
                      Text(
                        'Peso: ${usuario.weight} kg',
                      ),
                      Text(
                        'Sexo: ${usuario.sex}',
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
                      TextField(
                        controller: _controller,  
                        onChanged: (value) {
                          enfermedad = value;
                        },        
                          maxLines: 3,
                          textAlign: TextAlign.justify,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ingresar nombre',
                          )),
                      ElevatedButton(
                        onPressed: () {
                          usuario.addSickness(enfermedad);
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
