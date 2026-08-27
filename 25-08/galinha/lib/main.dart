import 'package:flutter/material.dart';
import 'package:galinha/screens/home_page.dart';

void main() {
  runApp(Galinha());
}

class Galinha extends StatelessWidget {
  const Galinha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
