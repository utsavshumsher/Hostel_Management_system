import 'package:flutter/material.dart';
import 'package:sleepholic/Foods/food.dart';
import 'package:sleepholic/Foods/food2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Food(),
    );
  }
}
