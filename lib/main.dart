import 'package:docfileapp/domain/entities/preference.dart';
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
    return ChangeNotifierProvider<AppData>(
      create: (context) => AppData(),
      builder: (context, child) {
        final appData = context.watch<AppData>();

        return MaterialApp(
          title: 'Flutter Demo',
          theme: appData.lightTheme.copyWith(
            textTheme:
                appData.lightTheme.textTheme.apply(fontFamily: appData.font),
          ),
          darkTheme: appData.darkTheme.copyWith(
            textTheme:
                appData.darkTheme.textTheme.apply(fontFamily: appData.font),
          ),
          themeMode: appData.themeDark ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      },
    );
  }
}
