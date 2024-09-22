import 'components/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find the Recipe',
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 49, 211, 176),
          fontFamily: 'Poppins'),
      home: const HomeScreen(),
    );
  }
}
