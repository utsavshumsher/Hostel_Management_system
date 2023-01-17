import 'package:flutter/material.dart';
import 'package:sleepholic/dashboard.dart';

class complain extends StatefulWidget {
  @override
  State<complain> createState() => _complainState();
}

class _complainState extends State<complain> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 1000,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 205, 195),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
            Container(
              height: 730,
              width: 5000,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 208, 164, 142),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(80))),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 70, left: 15),
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 50),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/think.jpg"),
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
                            color: Color.fromRGBO(49, 48, 48, 1.0)),
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
                      margin: EdgeInsets.only(left: 10),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 242, 231),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 60,
                        ),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 40, right: 250),
                                            child: Text(
                                              "Complains",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 28),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Write your complains here",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 21, 34, 56),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(40),
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: TextFormField(
                                                      decoration: InputDecoration(
                                                          labelText:
                                                              "Write your complains here"),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Container(
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  Color.fromRGBO(
                                                                      93,
                                                                      108,
                                                                      137,
                                                                      1.0),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(5),
                                                              minimumSize: Size(
                                                                  200, 30)),
                                                      onPressed: () {
                                                        setState(() {
                                                          count++;
                                                        });
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 30),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    });
                                context: context, 
                                builder: (context) {
                                  return  Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 250),
                      child: Text(
                      "Complains",
                      style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 28),
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
                           
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(200, 30)),
                              
                                onPressed: () {
                                          setState(() {
                                          count++;
                                      });
                                 Navigator.of(context).pop();
                                 
                                },
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
                                  );
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 206, 216, 209),
                                  padding: EdgeInsets.all(8)),
                              child: Icon(
                                Icons.add_circle_outline_rounded,
                                size: 60,
                                color: Color.fromARGB(255, 47, 69, 105),
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
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 7),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 213, 181),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 130, left: 20),
                        child: Text(
                          "${count} Complains",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 29),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
