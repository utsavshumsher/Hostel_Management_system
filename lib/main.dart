

import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sleepholic/ContactUs/ContactUs.dart';
import 'package:sleepholic/Food_rating/Food_rating.dart';
import 'package:sleepholic/Foods/food.dart';
import 'package:sleepholic/Foods/food2.dart';
import 'package:sleepholic/Invoice/Model/invoice.dart';
import 'package:sleepholic/Invoice/api/pdf_invoice_api.dart';
import 'package:sleepholic/Invoice/pdf_page.dart';
import 'package:sleepholic/Laundry/laundry.dart';
import 'package:sleepholic/OTP/ChangePassword.dart';
import 'package:sleepholic/Payments/payment.dart';
import 'package:sleepholic/Profile/profile.dart';
import 'package:sleepholic/Rooms/room_main.dart';
import 'package:sleepholic/about/aboutusScreens.dart';
import 'package:sleepholic/calendar/calendar_Screens.dart';
import 'package:sleepholic/complains.dart';
import 'package:sleepholic/dashboard.dart';
=======
import 'package:khalti/khalti.dart';
>>>>>>> 60ca526bd0b7a13ec5aeac7e317fd4e46c99fdb2
import 'package:sleepholic/homepage/homepage.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   await Khalti.init(
     publicKey: "",
     enabledDebugging: false
   );
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
<<<<<<< HEAD
      home: PdfPage(),
=======
      home: khalti(),
>>>>>>> 60ca526bd0b7a13ec5aeac7e317fd4e46c99fdb2
    );
  }
}
