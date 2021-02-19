import 'package:flutter/material.dart';
import 'package:flutter_lesson_app/screen/main_screen.dart';
import 'package:flutter_lesson_app/screen/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SecondScreen(),
    );
  }
}
