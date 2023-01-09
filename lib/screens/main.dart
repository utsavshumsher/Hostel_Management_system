import 'package:flutter/material.dart';
import 'package:sleepholic/screens/ContactUs/ContactUs.dart';
import 'package:sleepholic/screens/Invoice/Invoice.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Sleepholic',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Invoice(),


    );
  }
}