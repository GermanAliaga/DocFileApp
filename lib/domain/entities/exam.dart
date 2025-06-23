import 'package:flutter/material.dart';

class Exam extends ChangeNotifier {
  final String name;
  final String category;
  final String date;
  final String images;

  Exam({
    required this.name,
    required this.category,
    required this.date,
    required this.images,
  });
}