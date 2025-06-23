import 'package:flutter/material.dart';

class Exam {
  var id;
  var name;
  var category;
  var date;
  var images;

  Exam({this.id, required this.name, required this.category, required this.date, required this.images});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': name,
      'categoria': category,
      'fecha': date,
      'imagen': images,
    };
  }

  factory Exam.fromMap(Map<String, dynamic> map) {
    return Exam(id: map['id'], name: map['nombre'], category: map['categoria'], date: map['fecha'], images: map['imagen']);
  }

  @override
  String toString() => 'Actividad(id: $id, nombre: $name, categoria: $category, fecha: $date, imagen: $images)';
}
