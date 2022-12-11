import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sleepholic/screens/Register/register_screen.dart';
import 'package:sleepholic/screens/login/loginScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    return Container(
      height: Height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Sleepholic.jpg"),
            fit: BoxFit.cover
        ),
      ),



        );

  }
}