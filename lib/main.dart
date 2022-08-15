import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primaryColor: const Color(0xFFC0C0C0),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: const Color(0xFFC0C0C0),
            padding: const EdgeInsets.all(24.0),
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
