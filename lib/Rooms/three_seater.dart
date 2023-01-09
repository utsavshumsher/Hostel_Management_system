import 'package:flutter/material.dart';
import '../Payments/payment.dart';
import 'four_seater.dart';

class Three_Seater extends StatelessWidget {
  const Three_Seater({super.key});

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourSeater()));
                  },
                  child: Icon(Icons.arrow_forward))
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Row(
                  children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/threeseater.png"),
                  radius: 27,
                ),
                SizedBox(
                  width: 12,
                ),
                  Text("3 Bed-Bedroom",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(21, 34, 56, 1.0),

                  ),)
              ]),
              background: Image.asset(
                "assets/images/threeseater.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
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
                        SizedBox(width: 10,),
                        Card(
                          color: Color.fromRGBO(93, 108, 137,1),
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
                              "NPR 12,000/month",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Card(
                          color: Color.fromARGB(255, 177, 174, 174),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "NPR 24,000/ \n Two months",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(59, 59, 59, 1.0),
                                  fontSize: 14.5
                              ),
                            ),
                            height: 80,
                            width: 115,
                            padding: EdgeInsets.all(7),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Card(
                          color: Color.fromARGB(255, 177, 174, 174),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 65,
                            width: 110,
                            margin: EdgeInsets.all(7),
                            child: Text(
                              "NPR 1,44,000/ \n Year",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(59, 59, 59, 1.0),
                                  fontSize: 14.5
                              ),
                            ),
                       
                          ),
                        )
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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                        ),
                        onPressed: (() {
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context) => payment()
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
