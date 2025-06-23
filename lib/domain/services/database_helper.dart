/*import 'package:docfileapp/domain/entities/exam.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DataBaseHelper {
  static final DataBaseHelper _instance = DataBaseHelper._internal();
  static Database? _database;

  factory DataBaseHelper() {
    return _instance;
  }

  DataBaseHelper._internal();

  Future<void> initializeDatabase() async {
    await database;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'activity_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
     CREATE TABLE Examen ( 
       id INTEGER PRIMARY KEY, 
       name TEXT NOT NULL, 
       category TEXT NOT NULL,
       date TEXT NOT NULL, 
       image TEXT NOT NULL 
     ) 
   ''');
  }

  Future<int> insertActivity(Exam examen) async {
    final db = await database;
    return await db.insert(
      'Examen',
      examen.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Exam>> getActivities() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('Examen');
    return List.generate(maps.length, (i) {
      return Exam.fromMap(maps[i]);
    });
  }

  Future<void> clearActividades() async {
    final db = await database;
    await db.delete('Examen');
  }
}*/