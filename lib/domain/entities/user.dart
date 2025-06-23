import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  late String name;
  late String weight;
  late String height;
  late String sex;
  late List<String> sickness = [];

  void editInformation(String nombre, String peso, String altura, String sexo)
  {
    name = nombre;
    weight = peso;
    height = altura;
    sex = sexo;
    notifyListeners();
  }

  void addSickness(String enfermedad)
  {
    sickness.add(enfermedad);
    notifyListeners();
  }
}
