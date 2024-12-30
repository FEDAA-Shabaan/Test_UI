import 'package:flutter/material.dart';
import 'package:ui_test/home.dart';

void main() {
  runApp(AudiBooksApp());
}

class AudiBooksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


