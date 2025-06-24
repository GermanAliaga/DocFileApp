import 'package:docfileapp/domain/entities/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditUser extends StatefulWidget {
  const EditUser({super.key});

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  late TextEditingController _nameController;
  late TextEditingController _ageController;
  late TextEditingController _weightController;
  late TextEditingController _heightController;

  late String dropdownvalue;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _ageController = TextEditingController();
    _weightController = TextEditingController();
    _heightController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final perfil = Provider.of<Perfil>(context, listen: false);
    dropdownvalue = perfil.sex;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final usuario = Provider.of<Perfil>(context);
    final sexs = usuario.sexs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar perfil'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildRow('Cambiar nombre', _nameController, usuario.editName),
            _buildRow('Cambiar edad', _ageController, usuario.editAge),
            _buildRow('Cambiar peso', _weightController, usuario.editWeight),
            _buildRow('Cambiar altura', _heightController, usuario.editHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Cambiar sexo'),
                DropdownButton<String>(
                  value: dropdownvalue,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        dropdownvalue = newValue;
                      });
                      usuario.editSex(newValue);
                    }
                  },
                  items: sexs
                      .map((value) => DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, TextEditingController controller, Function(String) onSubmit) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(label),
        SizedBox(
          width: 200,
          child: TextField(
            controller: controller,
            onChanged: onSubmit,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nuevo valor',
            ),
          ),
        ),
      ],
    );
  }
}