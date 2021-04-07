import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_app/home.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game App',
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.white.withAlpha(0),
        ),
      ),
      home: Splah(),
    );
  }
}

class Splah extends StatefulWidget {
  @override
  SplahState createState() => SplahState();
}

class SplahState extends State<Splah> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
          height: 200.0,
          width: 200.0,
        ),
      ),
    );
  }
}
