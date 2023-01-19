import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/ContactUs/ContactUs.dart';
import 'package:sleepholic/Food_rating/Food_rating.dart';
import 'package:sleepholic/Foods/food.dart';
import 'package:sleepholic/Foods/food2.dart';
import 'package:sleepholic/Laundry/laundry.dart';
import 'package:sleepholic/OTP/ChangePassword.dart';
import 'package:sleepholic/Payments/payment.dart';
import 'package:sleepholic/Profile/profile.dart';
import 'package:sleepholic/calendar/calendar_Screens.dart';
import 'package:sleepholic/complains.dart';
import 'package:sleepholic/dashboard.dart';
import 'package:sleepholic/homepage/homepage.dart';
import 'package:sleepholic/login/forgot_password.dart';
import 'package:sleepholic/login/otpScreen.dart';
import 'package:sleepholic/screens/Register/register_screen.dart';
import 'package:sleepholic/screens/Welcome/welcome_screen.dart';
import 'package:sleepholic/screens/login/login_screen.dart';

import 'Foods/swipe.dart';
import 'RulesScreen/rules.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.alike().fontFamily,
      ),
      home: ForgotPasswordScreen(),
    );
  }
}
