import 'package:flutter/material.dart';
import 'package:sleepholic/complains.dart';
// import 'package:sleepholic/Foods/food.dart';
// import 'package:sleepholic/Foods/food2.dart';
// import 'package:sleepholic/Foods/food3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: complain(),
    );
  }
}