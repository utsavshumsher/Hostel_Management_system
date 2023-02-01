import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Payments/Userpayment.dart';

class FourSeater extends StatefulWidget {
  const FourSeater({Key? key}) : super(key: key);

  @override
  State<FourSeater> createState() => _FourSeaterState();
}

class _FourSeaterState extends State<FourSeater> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 530,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/fourseater.png"),
                  radius: 27,
                ),
                SizedBox(
                  width: 12,
                ),
                Text("4 bed-bedroom",  style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                )
              ],
            ),
            background: Image.asset(
              'assets/images/fourseater.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Color.fromRGBO(255, 246, 234, 1.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, bottom:10, right: 5),
                  child: Text(
                    "Bedroom, bathroom, and others are included at our Hostel",
                    style: (TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 6,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Card(
                          color: selectedIndex == 0 ? Color.fromRGBO(93, 108, 137,1) : Color.fromARGB(255, 177, 174, 174),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(7),
                            height: 70,
                            width: 115,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            ),
                            child: Text(
                              "NPR 10,000 / \n"
                                  "month",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14.5
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Card(
                          color: selectedIndex == 1 ? Color.fromRGBO(93, 108, 137,1) : Color.fromARGB(255, 177, 174, 174),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "NPR 20,000/ \n Two months",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14.5
                              ),
                            ),
                            height: 80,
                            width: 115,
                            padding: EdgeInsets.all(7),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: Card(
                          color: selectedIndex == 2 ? Color.fromRGBO(93, 108, 137,1) : Color.fromARGB(255, 177, 174, 174),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 65,
                            width: 110,
                            margin: EdgeInsets.all(7),
                            child: Text(
                              "NPR 1,20,000/ \n Year",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14.5,
                              ),
                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(5),
                          backgroundColor:  Color.fromRGBO(93, 108, 137,1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => payment()
                        ));
                      }),
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 200,
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
