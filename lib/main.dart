import 'package:flutter/material.dart';
import 'package:portfolio/src/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(fontFamily: 'Futura PT'),
      home: const PortfolioWebsite(),
    );
  }
}
