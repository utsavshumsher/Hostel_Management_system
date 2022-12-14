import 'package:flutter/material.dart';
import 'package:sleepholic/Foods/food.dart';
import 'package:sleepholic/Foods/food3.dart';

class second extends StatelessWidget {
  const second({super.key});

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
                    width: 40,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Food.jpg"),
                    radius: 65,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                        backgroundImage:
                        AssetImage("assets/images/Wednesday.avif"),
                        radius: 40
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 120),
                        child: Text(
                          "Wednesday",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 190),
                        child: Text(
                          "BreakFast -  Muffins & milk",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 205),
                        child: Text(
                          "Lunch - Dal, Rice, curry,  \n Yogurt Mixed Vegetables,",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 185),
                        child: Text(
                          "Dinner - Fried rice and egg",
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
            height: 60,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 4),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/Thrusday.avif",
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
                    margin: EdgeInsets.only(right: 190),
                    child: Text(
                      "Thrusday",
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 70),
                    child: Text(
                      "BreakFast - Pancakes & Coffee",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(right: 60),
                    child: Text(
                      "Lunch - Rice, chicken, achaar & \n egg curry",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 80),
                    child: Text(
                      "Dinner - Dal, Rice, Mushroom \n & papad",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 4),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/Friday.avif",
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
                      "Friday",
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 70),
                      child: Text(
                        "Breakfast - Toast and Coffee",
                        style: TextStyle(fontSize: 17),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      "Lunch - Dal, Rice, Mutton curry \n and Golbheda ko achar ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 60),
                    child: Text(
                      "Dinner - Dal, Rice, Cauliflower \n & Prawn",
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
