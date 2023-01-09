import 'package:flutter/material.dart';
import 'package:sleepholic/Foods/food2.dart';
import 'package:sleepholic/Foods/food_main.dart';
import 'package:sleepholic/dashboard.dart';
import 'package:sleepholic/homepage/homepage.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 246, 234, 1),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    }),
                    child: Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Text(
                      "Food Menu",
                      style: (TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 28)),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Food.jpg"),
                    radius: 60,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Sunday.jpg"),
                        radius: 40
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 223),
                        child: Text(
                          "Sunday",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 150),
                        child: Text(
                          "BrakFast - Cereal and Toast",
                          style: TextStyle(
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 115),
                        child: Text(
                          "Lunch - Dal, Rice, Chicken Curry \n & Yogurt",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 130),
                        child: Text(
                          "Dinner:- Dal, Rice, Spinach,  \n"
                              "& fries",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 7),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/Monday.jpg",
                  ),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 200),
                    child: Text(
                      "Monday",
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 70),
                    child: Text(
                      "BreakFast - Sandwich & Coffee",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(right: 100),
                    child: Text(
                      "Lunch - Rice chicken curry \n & aalu  ko achar",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 80),
                    child: Text(
                      "Dinner - Dal, Rice, Caulifower \n & papad",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 4),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/Tuesday.jpg",
                  ),
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 170),
                    child: Text(
                      "Tuesday",
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text(
                        "Breakfast - Sausage and Pancake",
                        style: TextStyle(fontSize: 17),
                      )),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 60),
                    child: Text(
                      "Lunch:- Dal, Rice, Paneer and \n "
                          "Golbheda ko achar ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Text(
                      "Dinner:- Dal, Rice, Mushroom curry \n & Prawn",
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

