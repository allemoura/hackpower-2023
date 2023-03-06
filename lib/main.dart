import 'package:flutter/material.dart';
import 'package:hack_power_site/app/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(
            brightness: Brightness.light,
            primary: const Color(0xFF8a415f),
            secondary: const Color(0xFFffecf4),
            background: Colors.white,
          )),
      home: const HomePage(),
    );
  }
}
