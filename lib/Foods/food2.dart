import 'package:flutter/material.dart';
import 'package:sleepholic/Foods/food.dart';

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
                  InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Food()));
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
                      backgroundImage:
                          AssetImage("assets/images/Wednesday.avif"),
                      radius: 45),
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
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        "BrakFast:-  Muffins & milk",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Lunch:- Dal, Rice, Mixed Vegetables, \n curry & Yougret",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        "Dinner:- Fried rice and egg",
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
                    "assets/images/Thrusday.avif",
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
                    margin: EdgeInsets.only(right: 190),
                    child: Text(
                      "Thrusday",
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
                      "BreakFast:- Pancakes and Coffee",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(right: 65),
                    child: Text(
                      "Lunch:- Rice chicken egg curry \n & aalu ko achar",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 18),
                    child: Text(
                      "Dinner:- Dal, Rice, Mushroom & papad",
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
                      "Friday",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 70),
                      child: Text(
                        "Breakfast:- Toast and Coffee",
                        style: TextStyle(fontSize: 17),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      "Lunch:- Dal, Rice, Mutton curry \n and Golbheda ko achar ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 60),
                    child: Text(
                      "Dinner:- Dal, Rice, Cauliflower \n & Prawn",
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
