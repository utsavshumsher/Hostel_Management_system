import 'package:flutter/material.dart';
import 'package:sleepholic/Rooms/two_seater.dart';
import 'package:sleepholic/dashboard.dart';
import 'package:sleepholic/homepage/homepage.dart';
import '../Payments/payments.dart';
import 'HostelPrice.dart';


class One_Seater extends StatefulWidget {
  const One_Seater({super.key});

  @override
  State<One_Seater> createState() => _One_SeaterState();
}



class _One_SeaterState extends State<One_Seater> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 530,
              leading: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()
                    )
                    );
                  },
                  child: Icon(Icons.arrow_back)),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/images/oneseater.png"),
                      radius: 27,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Single Bedroom", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                background:
                Image.asset(
                  "assets/images/oneseater.png",
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
                      "Bedroom, bathroom, and others are included at our Hostel",
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
                        ...List.generate(oneSeater.length, (index) =>
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
                                    "NPR ${oneSeater[index].price}/\n${oneSeater[index].cat}",
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
                    height: 32,
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
                              MaterialPageRoute(builder: (context) => payment(selectedIndex, oneSeater)
                              )
                          );
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



