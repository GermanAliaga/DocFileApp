import 'package:docfileapp/domain/entities/exam.dart';

class Category{
  late String name = '';
  late List<Exam> _exams = [];
  List<Exam> get exams => _exams;

  void addExam(String name, String date, String image) {
    final exam = Exam(
      name: name,
      date: date,
      images: image,
    );
    _exams.add(exam);
  }
}
