import 'package:flutter/material.dart';
import 'package:lab02/ex01.dart';
import 'package:lab02/ex02.dart';
import 'package:lab02/ex03.dart';
import 'package:lab02/ex04.dart';
import 'package:lab02/ex05.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.cyanAccent,
        ),
        useMaterial3: true,
      ),
      home: const Exercise05(),
    );
  }
}
