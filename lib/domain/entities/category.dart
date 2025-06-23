import 'package:docfileapp/domain/entities/exam.dart';
import 'package:flutter/material.dart';

class Category extends ChangeNotifier {
  late String name;
  late List<Exam> exams = [];
  
  late Exam exam;

  void addExam(String name, String category, String date, String image)
  {
    exam.name = name;
    exam.category = category;
    exam.date = date;
    exam.images = image;
    exams.add(exam);
    notifyListeners();
  }
}
