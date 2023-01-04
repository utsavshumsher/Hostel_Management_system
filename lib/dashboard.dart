import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 53,
          width: 420,
          decoration: BoxDecoration(
              color: Color(0xfff123456),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.notification_add,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.food_bank_rounded,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(
                  width: 59,
                ),
                Icon(
                  Icons.home,
                  size: 42,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.wash,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 500,
            margin: EdgeInsets.only(top: 345),
            child: Image.asset(
              "assets/images/dashboard.jpg",
              fit: BoxFit.cover,
            ),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 245, 228, 228)),
          ),
          Container(
            width: 5000,
            height: 350,
            margin: EdgeInsets.only(bottom: 400),
            decoration: BoxDecoration(
                color: Color(0xfff123456),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 120),
                            child: Icon(
                              Icons.home,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Sleepholic",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/hostel.jpg"),
                        radius: 70,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(40),
                              child: InkWell(
                                splashColor: Colors.blue,
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/room.jpg"),
                                  radius: 33,
                                ),
                              ),
                            ),
                            Text(
                              "Rooms",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(40),
                              child: InkWell(
                                splashColor: Colors.blue,
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/about.png"),
                                  radius: 33,
                                ),
                              ),
                            ),
                            Text(
                              "About-us",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(40),
                              child: InkWell(
                                splashColor: Colors.blue,
                                onTap: (() {}),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/comp.png"),
                                  radius: 33,
                                ),
                              ),
                            ),
                            Text(
                              "Complaints",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(40),
                              child: InkWell(
                                splashColor: Colors.blue,
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/money.jpg"),
                                  radius: 33,
                                ),
                              ),
                            ),
                            Text(
                              "Receipt",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 695,
              left: 120,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfff123456),
                      padding: EdgeInsets.all(10),
                      minimumSize: Size(170, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Text(
                    "BookNow",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  )))
        ]),
      ),
    );
  }
}
