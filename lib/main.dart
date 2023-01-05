
import 'package:sleepholic/Laundry/laundry.dart';
import 'package:sleepholic/Profile/profile.dart';
import 'package:sleepholic/Rooms/four_seater.dart';
import 'package:sleepholic/Rooms/three_seater.dart';
import 'package:sleepholic/Rooms/two_seater.dart';
import 'package:sleepholic/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/screens/Welcome/welcome_screen.dart';
import 'package:sleepholic/screens/login/login_screen.dart';

import 'Rooms/one_seater.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: laundry(),
    );
  }
  }

