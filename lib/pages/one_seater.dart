import 'package:flutter/material.dart';
import 'package:sleepholic/pages/two_seater.dart';

class One_Seater extends StatelessWidget {
  const One_Seater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 600,
              leading: Icon(Icons.arrow_back),
              actions: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Two_Seater()));
                    },
                    child: Icon(Icons.arrow_forward))
              ],
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
                    Text("Single Bedroom")
                  ],
                ),
                background: Image.asset(
                  "assets/images/oneseater.png",
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xfff6ea),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Bedroom, Bathrrom, kitchen etc facilities are available in our hostel",
                      style: (TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(7),
                        height: 75,
                        width: 110,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 147, 219, 222),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 122, 162, 169)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 171, 131, 178),
                                  spreadRadius: 0.5,
                                  blurRadius: 8,
                                  offset: Offset(4, 7))
                            ]),
                        child: Text(
                          "NPR 20,000/month",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "NPR 40,000/two month",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        height: 75,
                        width: 100,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 147, 219, 222),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 207, 198, 198)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 171, 131, 178),
                                  spreadRadius: 0.5,
                                  blurRadius: 8,
                                  offset: Offset(4, 7))
                            ]),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 75,
                        width: 110,
                        margin: EdgeInsets.all(7),
                        child: Text(
                          "NPR 2,40,000/year",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 147, 219, 222),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 207, 198, 198)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 171, 131, 178),
                                  spreadRadius: 0.5,
                                  blurRadius: 8,
                                  offset: Offset(4, 7))
                            ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(5),
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
        ],
      ),
    );
  }
}
