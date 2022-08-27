import 'package:flutter/material.dart';
import 'package:toma_bird_dicoding_project/first_screen.dart';
import 'package:toma_bird_dicoding_project/second_screen.dart';

bool isTrue = true;

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainFirstScreen(),
        '/second': (context) => const MainSecondScreen(),
      },
    ),
  );
}
