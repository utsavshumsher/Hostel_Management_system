import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/Invoice/pdf_page.dart';
import 'package:khalti/khalti.dart';
import 'package:sleepholic/homepage/homepage.dart';

import 'Payments/khalti.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Khalti.init(
      publicKey: "test_public_key_2abffc2f5fac45c981affa111407efd5",
      enabledDebugging: false);
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
      home: Homepage(),
    );
  }
}
