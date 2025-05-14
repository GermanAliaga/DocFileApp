import 'package:docfileapp/pages/user.dart';
import 'package:flutter/material.dart';

class AddSickness extends StatefulWidget {
  const AddSickness({
    super.key,
  });

  @override
  State<AddSickness> createState() => _AddSicknessState();
}

class _AddSicknessState extends State<AddSickness> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const User()));
            },
            child: const Text('Agregar enfermedad'),
          )
        ],
      ),
    ));
  }
}
