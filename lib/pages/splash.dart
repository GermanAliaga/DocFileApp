import 'dart:async';

import 'package:docfileapp/pages/myhomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String logo = "assets/icons/216411_star_icon.svg";
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(248, 179, 255, 252),
        Color.fromARGB(248, 87, 221, 255),
        Color.fromARGB(255, 33, 103, 182)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            logo,
            semanticsLabel: 'Logo',
            width: 200,
          ),
          const Text(
            'DocFileApp',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    ));
  }
}
