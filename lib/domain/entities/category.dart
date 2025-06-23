import 'package:docfileapp/domain/entities/exam.dart';
import 'package:flutter/material.dart';

class Category extends ChangeNotifier {
  final String name;
  final List<Exam> exams;

  Category({required this.name}) : exams = [];

  void addExam(String name, String category, String date, String image) {
    final exam = Exam(
      name: name,
      category: category,
      date: date,
      images: image,
    );
    exams.add(exam);
    notifyListeners();
  }
}
