import 'package:docfileapp/domain/entities/category.dart';
import 'package:flutter/material.dart';

class Sistema extends ChangeNotifier {
  final List<Category> _categoria = [];
  List<Category> get categoria => _categoria;

  void addCategory(String name) {
    final newCategory = Category(name: name);
    _categoria.add(newCategory);
    notifyListeners();
  }
}