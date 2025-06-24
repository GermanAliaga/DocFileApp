import 'package:flutter/material.dart';

class Perfil extends ChangeNotifier {
  late String _name = 'John Doe';
  String get name => _name;
  late String _age = '25';
  String get age => _age;
  late String _weight = '100';
  String get weight => _weight;
  late String _height = '178';
  String get height => _height;
  late String _sex = 'Masculino';
  String get sex => _sex;
  late List<String> sexs = ['Femenino', 'Masculino'];
  late List<String> sickness = [];

  void editName(String nombre)
  {
    _name = nombre;
    notifyListeners();
  }

  void editAge(String edad)
  {
    _age = edad;
    notifyListeners();
  }

  void editWeight(String peso)
  {
    _weight = peso;
    notifyListeners();
  }

  void editHeight(String altura)
  {
    _height = altura;
    notifyListeners();
  }

  void editSex(String sexo)
  {
    _sex = sexo;
    notifyListeners();
  }

  void addSickness(String enfermedad)
  {
    sickness.add(enfermedad);
    notifyListeners();
  }
}
