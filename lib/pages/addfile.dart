import 'package:flutter/material.dart';

class AddFile extends StatefulWidget {
  const AddFile({super.key});

  @override
  State<AddFile> createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Creación nueva receta'),
      ),
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
                  'Fecha ',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('+Leche', style: TextStyle(fontSize: 10))),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('+Crema', style: TextStyle(fontSize: 10))),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('+Café', style: TextStyle(fontSize: 10))),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('+Azúcar', style: TextStyle(fontSize: 10))),
                  ],
                ),
                const Text(
                  'Herramientas',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('+Cafetera\nitaliana',
                            style: TextStyle(fontSize: 10))),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('+Filtro\npapel',
                            style: TextStyle(fontSize: 10))),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('+Espumador',
                            style: TextStyle(fontSize: 10))),
                  ],
                ),
                const Text(
                  'Preparación:',
                  style: TextStyle(fontSize: 15),
                ),
                const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Describir preparación',
                )),
                const Text(
                  'Tiempo preparación:',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.remove)),
                    const Text(
                      '00:00:00',
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Agregar exámen')),
              ],
            )),
      ),
    );
  }
}
