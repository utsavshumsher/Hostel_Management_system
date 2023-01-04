import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sleepholic/screens/Register/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String route = "WelcomeScreen";
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery
        .of(context)
        .size
        .height;
    return Container(
      height: Height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Sleepholic.jpg"),
            fit: BoxFit.cover
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: Height / 100 * 500,
            ),
            ElevatedButton(onPressed: () {
              // EdgeInsets.symmetric(horizontal: 90);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => RegisterScreen(),
                ),
              );
            },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Color.fromRGBO(93, 108, 137, 1.0),
                    padding: EdgeInsets.symmetric(
                        horizontal: 30, vertical: 8)

                ),
                child: Text("Join Now")),

            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => LoginScreen(),
                ),
              );
            },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Color.fromRGBO(93, 108, 137, 1.0),
                    padding: EdgeInsets.symmetric(
                        horizontal: 35, vertical: 8)
                ),
                child: Text("Login"))
          ],


        ),
      ),
    );
  }
}