import 'package:docfileapp/domain/entities/category.dart';
import 'package:docfileapp/domain/entities/exam.dart';
import 'package:docfileapp/domain/entities/preference.dart';
import 'package:docfileapp/domain/entities/sistem.dart';
import 'package:docfileapp/domain/entities/user.dart';
import 'package:docfileapp/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppData()),
        ChangeNotifierProvider(create: (_) => Sistema()),
        ChangeNotifierProvider(create: (_) => Category(name: '')),
        ChangeNotifierProvider(create: (_) => Exam(name: '', category: '', date: '', images: '')),
        ChangeNotifierProvider(create: (_) => Perfil()),
      ],
      child: const AppRoot(),
    );
  }
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final appData = context.watch<AppData>();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: appData.lightTheme.copyWith(
        textTheme: appData.lightTheme.textTheme.apply(
          fontFamily: appData.font,
        ),
      ),
      darkTheme: appData.darkTheme.copyWith(
        textTheme: appData.darkTheme.textTheme.apply(
          fontFamily: appData.font,
        ),
      ),
      themeMode: appData.themeDark ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}