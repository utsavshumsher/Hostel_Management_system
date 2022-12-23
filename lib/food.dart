import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 221, 221),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 35,
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
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/694189032/photo/hand-held-bbq-favorites.jpg?s=170667a&w=is&k=20&c=wk8eMpw-RZOtDEzwWXHyStrBbChWHpyPUqbWk3kHloo="),
                    radius: 75,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
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
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 95),
                      child: Text(
                        "BrakFast:- Cereal and Toast",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      child: Text(
                        "Lunch:- Dal, Rice, Chicken Curry & Yougert",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 65),
                      child: Text(
                        "Dinner:- Dal, RIce, Spinach, fries",
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
                      style: TextStyle(fontSize: 28),
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
                    margin: EdgeInsets.all(2),
                    child: Text(
                      "Lunch:- Rice chicken curry & aalu ko achar",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(
                      "DInner:- Dal, Rice, Caulifower & papad",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
