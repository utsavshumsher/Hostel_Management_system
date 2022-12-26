import 'package:flutter/material.dart';

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
                    onTap: (() {}),
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
                    width: 40,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Food.jpg"),
                    radius: 75,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Sunday.jpg"),
                      radius: 45),
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
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 95),
                      child: Text(
                        "BrakFast:- Cereal and Toast",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        "Lunch:- Dal, Rice, Chicken Curry & \n Yougert",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 65),
                      child: Text(
                        "Dinner:- Dal, Rice, Spinach, fries",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
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
                    "assets/images/Monday.jpg",
                  ),
                  radius: 50,
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
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      "BreakFast:- Sandwich and Coffee",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(right: 43),
                    child: Text(
                      "Lunch:- Rice chicken curry & aalu \n ko achar",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 18),
                    child: Text(
                      "Dinner:- Dal, Rice, Caulifower & papad",
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
                    "assets/images/Tuesday.jpg",
                  ),
                  radius: 50,
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
                  Container(
                      margin: EdgeInsets.only(right: 18),
                      child: Text(
                        "Breakfast:- Sausage and Pancake",
                        style: TextStyle(fontSize: 17),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      "Lunch:- Dal, Rice, Paneer and \n Golbheda ko achar ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Dinner:- Dal, Rice, Mushroom curry \n & Prawn",
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 47, 60, 85),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18))),
              child: Container(
                child: Text(
                  "Next day",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
