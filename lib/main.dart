
import 'package:flutter/material.dart';
import 'package:sleepholic/Laundry/laundry.dart';
import 'package:sleepholic/Profile/profile.dart';
import 'package:sleepholic/dashboard.dart';
import 'package:sleepholic/screens/Register/register_screen.dart';
import 'package:sleepholic/screens/Welcome/welcome_screen.dart';
import 'package:sleepholic/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
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
        ),
        home: _HomePageState(),
        routes: {
          "/login": (BuildContext context) => LoginScreen(),
          "register": (BuildContext context) => RegisterScreen(),
        }
    );
  }
}

class _HomePageState extends StatefulWidget {
  const _HomePageState({Key? key}) : super(key: key);

  @override
  State<_HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<_HomePageState> {
  int idx = 0;
  List<Widget> home = [
    Profile(),
    laundry(),
    Dashboard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book_sharp), label: "Menu") ,
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.local_laundry_service), label: "Laundry"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "About us"),
          ],
          selectedItemColor: Color.fromARGB(255, 245, 130, 121),
          unselectedItemColor:  Color.fromARGB(255, 21, 34, 56),
          currentIndex: idx,
          onTap: (index) {
            setState(() {
              idx = index;
            });
          },
        ),
        body: home[idx]
    );
  }
}