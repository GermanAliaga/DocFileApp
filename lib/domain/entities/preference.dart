import 'package:docfileapp/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  bool _themeDark = false;
  bool get themeDark => _themeDark;

  String _font = 'Roboto';
  String get font => _font;

  List<String> fuentes = <String>[
    'Roboto',
    'Helvetica',
    'Caramel',
  ];

  late final TextTheme baseTextTheme;
  late final MaterialTheme themeApp;
  late final ThemeData lightTheme;
  late final ThemeData darkTheme;

  ThemeData get themeHoleApp => _themeDark ? darkTheme : lightTheme;

  AppData() {
    baseTextTheme = Typography.material2021().black;
    themeApp = MaterialTheme(baseTextTheme);
    lightTheme = themeApp.light();
    darkTheme = themeApp.dark();
  }

  void boolState(bool boolCounter) {
    _themeDark = boolCounter;
    notifyListeners();
  }

  void setFont(String selectedFont) {
    _font = selectedFont;
    notifyListeners();
  }
}

/*class AppData extends ChangeNotifier {
  bool _themeDark = false;
  bool get themeDark => _themeDark;

  List<String> fuentes = <String>[
    'Roboto',
    'Helvetica',
    'Caramel',
  ];

  final TextTheme baseTextTheme = Typography.material2021().black;
  final MaterialTheme themeApp = MaterialTheme(baseTextTheme);

  final ThemeData lightTheme = themeApp.light();
  final ThemeData darkTheme = themeApp.dark();

  final ThemeData _themeHoleApp = lightTheme;
  ThemeData get themeHoleApp => _themeHoleApp;

  String _font = 'Roboto';
  String get font => _font;

  void boolState(bool boolCounter) {
    _themeDark = boolCounter;
    notifyListeners();
  }

  void setFont(String selectedFont) {
    _font = selectedFont;
    notifyListeners();
  }
}*/
