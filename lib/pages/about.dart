import 'dart:convert';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class Tuopinion extends StatefulWidget {
  const Tuopinion({super.key});
  @override
  State<Tuopinion> createState() => _TuopinionState();
}

class _TuopinionState extends State<Tuopinion> {
  List items = [];
  List<double?> sliderValues = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    try {
      final String response =
          await rootBundle.loadString("assets/tuopinion.json");
      final data = await json.decode(response);
      setState(() {
        items = data["preguntas"] ?? [];
        sliderValues = List<double?>.filled(items.length, null);
      });
      print(items);
    } catch (e) {
      print('Error al cargar el archivo JSON: $e');
    }
  }

  void enviarRespuestas() {
    final respuestas = <String>[];

    for (int i = 0; i < items.length; i++) {
      final pregunta = items[i]['titulo'] ?? 'Pregunta ${i + 1}';
      final valor = sliderValues[i]?.toStringAsFixed(1) ?? 'Sin respuesta';
      respuestas.add('$pregunta: $valor');
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Respuestas'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: respuestas.map((r) => Text(r)).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              String sms = respuestas.join('\n');
              _sendSMS(sms);
              Navigator.pop(context);
            },
            child: const Text('Enviar'),
          ),
        ],
      ),
    );
  }

  void _sendSMS(String sms) {
    Email mail = Email(
      body: sms,
      subject: 'Valorización aplicación',
      recipients: ['deutsch2701@outlook.cl'],
    );
    FlutterEmailSender.send(mail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tu opinión"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: enviarRespuestas,
        child: const Icon(Icons.send),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: items.isNotEmpty
            ? Column(children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        key: ValueKey(index),
                        margin: const EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(items[index]["titulo"] ?? ""),
                              Text('${items[index]["opciones"]}'),
                              Slider(
                                value: sliderValues[index] ?? 0.0,
                                max: 5,
                                divisions: 5,
                                label: (sliderValues[index] ?? 0.0)
                                    .round()
                                    .toString(),
                                onChanged: (double value) {
                                  setState(() {
                                    sliderValues[index] = value;
                                  });
                                },
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('0'),
                                  Text('5'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ])
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
