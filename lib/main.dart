import 'package:flutter/material.dart';
import 'package:portfolio/src/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        fontFamily: 'FuturaPT',
        primaryColor: const Color(0xFFC0C0C0),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: const Color(0xFFC0C0C0),
            padding:
                const EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0),
          ),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            letterSpacing: 1,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const PortfolioWebsite(),
    );
  }
}
