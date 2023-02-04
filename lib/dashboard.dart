import 'package:flutter/material.dart';
import 'package:sleepholic/Invoice/Invoice.dart';
import 'package:sleepholic/Rooms/swiping.dart';
import 'package:sleepholic/about/aboutusScreens.dart';
import 'package:sleepholic/complains.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard({super.key});
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                color: Color.fromARGB(255, 93, 108, 137),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                SingleChildScrollView( scrollDirection: Axis.horizontal,
                  child: Row(
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
                          margin: EdgeInsets.only(top: 30),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/logo.png"),
                            radius: 70,
                          ),
                        ),
                      
                    ],
                  ),
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
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => RoomViewDemo(),
                                    ),
                                  );
                                },
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
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => Aboutus())
                                  );
                                },
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
                                onTap: (() { Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => complain(),
                                    ),
                                  );}),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/think.jpg"),
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
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Invoice()));
                                },
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
              top: 730,
              left: 120,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(93, 108, 137, 1.0),
                      padding: EdgeInsets.all(10),
                      minimumSize: Size(170, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {},
                  child: Text(
                    "Book-Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white
                    ),
                  )))
        ]),
      ),
    );
  }
}
