import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Aboutus(),
    );
  }
}

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF6EA),
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/logo.png"),
            ),
            Text(
              "Our Story",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: "Times New Roman",
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "An 'About Us' page is a spot for your founding story, a place to show off your business wins, and a sales page that answers the most pressing question new customers have about your business.",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Times New Roman",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 10),
              child: Image(
                image: AssetImage(
                    "assets/images/318070996_685685026532418_7369720575328769398_n.jpg"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Our Features",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: "Times New Roman",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Image(
                image: AssetImage("assets/images/fea.png"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: "Times New Roman",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Email: hostel@gmail.com \n",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: "Phone: 9816582055\n"
                              "Address: Dilibazar, Kathmandu\n",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Google Map of Hostel",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Times New Roman",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image(
                      image: AssetImage("Images.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "View our social media links for more details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Times New Roman",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/318595156_463625962615995_986835697493728303_n.png',
                            height: 60,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/318178125_521751043324215_316887765522245429_n.png',
                            height: 60,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/317895200_866011218146295_1570780106913126653_n.png',
                            height: 60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
