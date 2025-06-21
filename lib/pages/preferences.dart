import 'package:docfileapp/domain/entities/preference.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreferencePage extends StatefulWidget {
  const PreferencePage({
    super.key,
  });

  @override
  State<PreferencePage> createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  late String dropdownvalue;

  @override
  void initState() {
    super.initState();
    final appData = Provider.of<AppData>(context, listen: false);
    dropdownvalue = appData.font;
  }

  @override
  Widget build(BuildContext context) {
    final appData = Provider.of<AppData>(context);
    List<String> fuentes = appData.fuentes;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Configuraciones'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Modo Oscuro'),
                Switch(
                  value: appData.themeDark,
                  onChanged: (value) {
                    appData.boolState(value);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Cambiar fuente'),
                DropdownButton<String>(
                  value: dropdownvalue,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        dropdownvalue = newValue;
                      });
                      appData.setFont(newValue);
                    }
                  },
                  items: fuentes.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value, style: TextStyle(fontFamily: value)),
                    );
                  }).toList(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Tamaño fuente'),
                TextButton(
                    onPressed: () {
                      appData.setFontSize(false);
                    },
                    child: const Icon(Icons.remove)),
                Text('${appData.sizeFont}'),
                TextButton(
                    onPressed: () {
                      appData.setFontSize(true);
                    },
                    child: const Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
