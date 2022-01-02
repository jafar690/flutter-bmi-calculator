import 'package:flutter/material.dart';

import 'input_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF090C22),
        ),
        primaryColor: const Color(0xFF090C22),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
      home: const InputPage(title: 'BMI CALCULATOR'),
    );
  }
}
