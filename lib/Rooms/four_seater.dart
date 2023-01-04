import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Four_Seater extends StatelessWidget {
  const Four_Seater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 600,
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
                Text("Four Seater Room",  style: TextStyle(fontWeight: FontWeight.bold),)
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
              color: Color.fromRGBO(255, 246, 234,1),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom:10, right: 5),
                    child: Text(
                      "Bedroom, Bathrrom, kitchen etc facilities are available in our hostel",
                      style: (TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          color: Color.fromRGBO(93, 108, 137,1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(7),
                            height: 75,
                            width: 135,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                ),
                            child: Text(
                              "NPR 10,000/month",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontSize: 16
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Card(
                          color: Color.fromARGB(255, 177, 174, 174),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "NPR 20,000/ \n Two month",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16
                              ),
                            ),
                            height: 90,
                            width: 155,
                            padding: EdgeInsets.all(7),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Card(
                          color: Color.fromARGB(255, 177, 174, 174),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 75,
                            width: 130,
                            margin: EdgeInsets.all(7),
                            child: Text(
                              "NPR 1,20,000/ \n Year",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16
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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                        ),
                        onPressed: (() {}),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 250,
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
      ]),
    );
  }
}
