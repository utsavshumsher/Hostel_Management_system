import 'package:flutter/material.dart';

class complain extends StatelessWidget {
  const complain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 1000,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 246, 234, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
            Container(
              height: 730,
              width: 5000,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 76, 108, 140),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(80))),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 40, left: 5),
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back,
                    size: 40,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 50),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/think.png"),
                        radius: 40,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        "Complains",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 216, 248),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 7, 7, 7),
                                  padding: EdgeInsets.all(8)),
                              child: Icon(
                                Icons.add_circle_outline_rounded,
                                size: 60,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Add New",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 130, 215, 237),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 130, left: 20),
                        child: Text(
                          "3 Complains",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 29),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 735),
              child: Container(
                height: 600,
                width: 1000,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 250),
                      child: Text(
                        "Complains",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Write your complains on below Text-Field",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: TextFormField(
                                decoration:
                                    InputDecoration(labelText: "Write your comlain here"),
                              ),
                            ),
                            // Container(
                            //   child: TextFormField(
                            //     decoration:
                            //         InputDecoration(labelText: "Complain 2"),
                            //   ),
                            // ),
                            // Container(
                            //   child: TextFormField(
                            //     decoration:
                            //         InputDecoration(labelText: "Complain 3"),
                            //   ),
                            // ),
                            // Container(
                            //   child: TextFormField(
                            //     decoration:
                            //         InputDecoration(labelText: "Complain 4"),
                            //   ),
                            // ),
                            // Container(
                            //   child: TextFormField(
                            //     decoration:
                            //         InputDecoration(labelText: "Complain 5"),
                            //   ),
                            // ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(200, 30)),
                                onPressed: () {},
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}