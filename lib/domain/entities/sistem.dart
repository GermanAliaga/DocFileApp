import 'package:docfileapp/domain/entities/category.dart';
import 'package:flutter/material.dart';

class Sistema extends ChangeNotifier{
  late List<Category> _categoria = [];
  List<Category> get categoria => _categoria;
  late Category cat;

  void addCategory(String name)
  {
    cat.name = name;
    _categoria.add(cat);
    notifyListeners();
  }
}