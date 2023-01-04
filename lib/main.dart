import 'package:flutter/material.dart'
import 'package:sleepholic/OTP/ChangePassword.dart';
import 'package:sleepholic/OTP/PhoneNumber.dart';
import 'package:sleepholic/OTP/verification.dart';
import 'package:sleepholic/screens/Register/register_screen.dart';
import 'package:sleepholic/screens/Welcome/welcome_screen.dart';
import 'package:sleepholic/screens/login/loginScreen.dart';
import 'package:sleepholic/dashboard.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),

      home: Dashboard(),
    );
  }
}

void main(List<String> args) {

  
  AppBar:AppBar(
    
  );
}
