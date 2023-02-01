import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sleepholic/homepage/homepage.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  String referenceId = "";

  @override
  Widget build(BuildContext context) {
    String ? paying;
    return Scaffold(
      body: Stack(
          children: [
      Column(
      children: [
      SizedBox(
      height: 20,
      ),
      const Text(
        "Payment Methods",
        style: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 92, 15, 163),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Divider(
        color: Color.fromARGB(255, 92, 15, 163),
        height: 20,
        thickness: 1,
      ),
      SizedBox(
        height: 20,
      ),
      //Image for Khalti
      InkWell(
        splashColor: Colors.grey,
        onTap: () {
          print("Image Tapped");
        }, // Image tapped
        child: Image.asset(
          'assets/Images/khalti.png',
          width: 180,
        ),
      ),
      SizedBox(
        height: 40,
      ),
      //Cash on Delivery
      InkWell(
          splashColor: Colors.grey,
          onTap: () {
            AlertDialog(
              title: const Text("Cash on Delivery"),
              content: const Text("Payment successful"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"))
              ],
            );
            Container(
              color: Color.fromARGB(255, 206, 216, 209),
              child: Align(
                alignment: Alignment.bottomLeft,
              ),
            );
            Container(
              height: 760,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 450,
                        left: 5
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 90,
                          width: 210,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 200, 193, 193),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Text(
                            "NPR 20,000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
            Positioned(
              top: 450,
              right: 5,
              child: Container(
                alignment: Alignment.center,
                height: 90,
                width: 205,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 200, 193, 193),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: ElevatedButton(
                  onPressed: () =>
                      showDialog<String>(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) =>
                              AlertDialog(
                                title: Text(
                                  'Continue Payment?',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(93, 108, 137, 1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                content: Text(
                                  'Do you want to continue Payment?',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(21, 34, 56, 1.0),
                                      fontWeight: FontWeight.normal
                                  ),
                                ),
                                actions: <Widget>[
                                  Container(
                                    child: TextButton(onPressed: () {
                                      Alert(
                                        context: context,
                                        title: "Payment Successful",
                                        desc: "Thankyou for choosing us.",
                                        image: Image.asset(
                                            "assets/images/success.png"),
                                        buttons: [
                                          DialogButton(
                                            child: Text(
                                              "Done",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                            onPressed: () {
                                              print("Done");
                                            },
                                            color: Color.fromRGBO(
                                                93, 108, 137, 1.0),
                                            radius: BorderRadius.circular(18.0),
                                          ),
                                        ],
                                      ).show();
                                    },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromRGBO(
                                              21, 34, 56, 1.0),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(onPressed: () {
                                    Navigator.pop(context);
                                  },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromRGBO(
                                              21, 34, 56, 1.0),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      )
                                  ),
                                ],
                              )
                      ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      backgroundColor: Color.fromRGBO(93, 108, 137, 1.0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 50, vertical: 8)),
                  child: Text(
                    "Pay",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            );
            Container(
              height: 360,
              width: 450,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(206, 216, 209, 1.0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80),
                  )
              ),
            );
            Positioned(
              top: 70,
              left: 20,
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Icon(
                      Icons.arrow_back
                  )),
            );
            Positioned(
              top: 130,
              left: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: CircleAvatar(
                  backgroundImage:
                  AssetImage("assets/images/nice.jpg"),
                  radius: 40,
                ),
              ),
            );
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 220
              ),
              child: Container(
                child: Text(
                  "           Liam Hemsworth",
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 34, 56),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            );
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 65
              ),
              child: Container(
                child: Text(
                  'Payment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 34, 56),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            );
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 390
              ),
              child: Container(
                child: Text('Due Amount: ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 34, 56),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
              ),
            );
            Positioned(
              top: 570,
              right: 200,
              child: Container(
                child: Text(
                  'Methods of Payment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 34, 56),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            );
          }
      )
      ]
      ),
    ]
    )
    );
  }
}
