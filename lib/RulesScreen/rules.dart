import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Item_model.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rules and Ragulations'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: Duration(milliseconds: 1000),
              dividerColor: Colors.red,
              elevation: 1,
              children: [
                ExpansionPanel(
                  canTapOnHeader: true,
                  body: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          itemData[index].discription,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                              letterSpacing: 0.3,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        itemData[index].headerItem,
                        style: TextStyle(
                          color: itemData[index].colorsItem,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  isExpanded: itemData[index].expanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded;
                });
              },
            );
          },
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Things that are strictly prohibited inside the hostel?',
      discription:
          "1. Smoking, Alcohol & Narcotic consumption is strictly prohibited in and around the Hostel premises. Strict action will be taken against offenders.\n 2. Birthday/Other Celebrations are strictly prohibited in Hostel.\n 3. Students are not allowed to organize any group activities in their room.\n4. Defacing walls, equipment, furniture etc., is strictly prohibited.\n5. Enter rooms of other students without permission are strictly prohibited.",
      colorsItem: Colors.black,
    ),
    ItemModel(
      headerItem: 'Rules that should be maintain inside the hostel room?',
      discription:
          "1. Students must keep the Rooms clean.\n2. Students must turn off all the electrical equipments & lights before leaving their rooms. ",
      colorsItem: Colors.black,
    ),
    ItemModel(
      headerItem: 'Rules that should be maintain inside the hostel mess?',
      discription:
          "1. Food will be served only in the designated Dining Hall(s) and only during the specified timings. Wasting food & water will not be encouraged.\n 3. All lights must be switched off before 11 pm in the rooms. Only study lamps are permitted.",
      colorsItem: Colors.black,
    ),
    ItemModel(
      headerItem: 'Rules that every visitors should follow inside the hostel?',
      discription:
          "1. All visitors to the hostel including the parents/guardians will have to make necessary entries in the visitor’s book available at the hostel entrance with the security guard.\n 2. Visitors are allowed only in AV Room between: 4:30 p.m. and 6:30 p.m. Visitors are not allowed beyond the visiting area. No outside Guest Students will be allowed inside the hostel. ",
      colorsItem: Colors.black,
    ),
    ItemModel(
      headerItem: 'Rules that should be followed during payment?',
      discription:
          "1. Payment should be allways be done before the end of the month if not done there will be certain fine in those condition.",
      colorsItem: Colors.black,
    ),
    ItemModel(
      headerItem: 'Rules on  belongings?',
      discription:
          "1. The Management & Staff will not be responsible for the lost or damage of students personal belongings.",
      colorsItem: Colors.black,
    ),
  ];
}
