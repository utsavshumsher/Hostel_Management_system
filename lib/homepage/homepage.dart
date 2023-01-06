
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/Foods/food_main.dart';
import '../Foods/food.dart';
import '../Laundry/laundry.dart';
import '../Profile/profile.dart';
import '../dashboard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int idx = 0;
  List<Widget> home = [

    PageViewDemo(),
    Dashboard(),
    laundry(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
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