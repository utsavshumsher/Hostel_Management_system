import 'package:flutter/material.dart';

class laundry extends StatefulWidget {
  const laundry({super.key});

  @override
  State<laundry> createState() => _laundryState();
}

class _laundryState extends State<laundry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: 5000,
        width: 5000,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 93, 108, 137),
            Color.fromARGB(255, 255, 246, 234)
            // Color(0xFF701Ebd),
            // Color(0xFF873bc),
            // Color(0xFFfe4a97)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "Laundry",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(
                child: Text(
                  "Schedules",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 470,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 93, 108, 137),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 246, 234),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Sunday",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 37,
                      ),
                      Container(
                        child: Text(
                          "Colored Clothes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            color: Color.fromARGB(255, 255, 246, 234),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 470,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 246, 234),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Bed Sheets",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            color: Color.fromARGB(255, 21, 34, 56),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 93, 108, 137),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Tuesday",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20,
                          color: Color.fromARGB(255, 255, 246, 234),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 470,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 93, 108, 137),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 246, 234),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Friday",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20,
                            color: Color.fromARGB(255, 21, 34, 56),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        child: Text(
                          "White Clothes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            color: Color.fromARGB(255, 255, 246, 234),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
