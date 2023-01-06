import 'package:flutter/material.dart';
import 'package:sleepholic/Foods/food2.dart';

class third extends StatelessWidget {
  const third({super.key});

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
                          MaterialPageRoute(builder: (context) => second()));
                    }),
                    child: Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),

                  Container(
                    child: Text(
                      "Food Menu",
                      style: (TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 28)),
                    ),
                  ),
                  SizedBox(
                    width: 70,
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
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/images/Saturday.avif"),
                      radius: 45),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 100, top: 10),
                      child: Text(
                        "Saturday",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text(
                        "BrakFast:-  Puri Tarkari & jerry",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        "Lunch:- Dal, Rice, fish curry \n & Yogurt",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text(
                        "Dinner:- Dal, Rice, Gedagudi \n and Achar",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
