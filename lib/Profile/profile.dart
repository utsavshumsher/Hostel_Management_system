import 'package:flutter/material.dart';

class wow extends StatefulWidget {
  const wow({super.key});

  @override
  State<wow> createState() => _wowState();
}

class _wowState extends State<wow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Color(0xff123456),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10, bottom: 100)),
                  Icon(
                    Icons.logout_outlined,
                    size: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.all(8),
                        minimumSize: Size(3, 0)),
                    child: Text(
                      "Log Out",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  )
                ],
              )),
        ),
        Container(
          height: 760,
          width: 600,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 490),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 4)),
                    Container(
                      alignment: Alignment.center,
                      height: 90,
                      width: 210,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 200, 193, 193),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      child: Text(
                        "NPR 20,000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 90,
                      width: 210,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 200, 193, 193),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff123456),
                            padding: EdgeInsets.all(15)),
                        child: Text(
                          "Fone Pay",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 35,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        splashColor: Colors.black,
                        onTap: () {},
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2, right: 2),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.comment,
                        size: 35,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        splashColor: Colors.black,
                        onTap: () {},
                        child: Text(
                          "Complaints",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 360,
          width: 450,
          decoration: BoxDecoration(
              color: Color(0xff123456),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80))),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(left: 10, top: 35)),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 280,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shadowColor: Colors.blue,
                        padding: EdgeInsets.all(7),
                        minimumSize: Size(0, 0)),
                    child: Icon(
                      Icons.call,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shadowColor: Colors.blue,
                        padding: EdgeInsets.all(7),
                        minimumSize: Size(0, 0)),
                    child: Icon(
                      Icons.message,
                      size: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(right: 90),
                child: Text(
                  "Roshan K. Khadka",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Softwarica College of Information technology and E-commerce",
                  style: TextStyle(
                      color: Color.fromARGB(255, 162, 149, 149),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 259,
          left: 13,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/profile.jpg",
              scale: 10,
            ),
          ),
        ),
      ]),
    );
  }
}
