import 'package:flutter/material.dart';
import 'package:sleepholic/Rooms/three_seater.dart';
import '../Payments/payments.dart';
import 'HostelPrice.dart';

class TwoSeater extends StatefulWidget {
  const TwoSeater({Key? key}) : super(key: key);

  @override
  State<TwoSeater> createState() => _TwoSeaterState();
}

class _TwoSeaterState extends State<TwoSeater> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 520,
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThreeSeater()));
                  },
                  child: Icon(Icons.arrow_forward),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/images/twoseater.png"),
                      radius: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text("2 Bed- BedRoom",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                    )
                  ],
                ),
                background: Image.asset(
                  "assets/images/twoseater.png",
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
            child: Container(
              color: Color.fromRGBO(255, 246, 234,1),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom:10, right: 5),
                    child: Text(
                      "Bedroom, Bathroom, kitchen facilities are included in our hostel",
                      style: (TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                      ...List.generate(twoSeater.length, (index) =>
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Card(
                              color: selectedIndex == index ? Color.fromRGBO(93, 108, 137,1) : Color.fromARGB(255, 177, 174, 174),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(7),
                                height: 75,
                                width: 115,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                ),
                                child: Text(
                                  "NPR ${twoSeater[index].price}/\n${twoSeater[index].cat}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 14.9
                                  ),
                                ),
                              ),
                            ),
                          ),),

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
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))
                        ),
                        onPressed: (() {
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context) => payment(selectedIndex, twoSeater)
                              ));
                        }),
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 200,
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
