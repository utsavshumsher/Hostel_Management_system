
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sleepholic/ChangePassword/change_password.dart';
import 'package:sleepholic/Invoice/Invoice.dart';
import 'package:sleepholic/dashboard.dart';
import '../screens/login/changePassword.dart';



class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  String? payment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Stack(
          children: [
            Container(
              color: Color.fromRGBO(206, 216, 209, 1.0),
            ),

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
                    padding: const EdgeInsets.only(top: 450),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5)),
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
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
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
                                                  Navigator.pop(context);
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
                                                          Navigator.pop(context);
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Container(
                      height: 30,
                      child: Text("Payment Methods",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ),
                  ),

                  RadioListTile(
                    title: const Text("Cash",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    value: "Cash",
                    groupValue: payment,
                    onChanged: (value){
                      setState(() {
                        payment = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("Khalti",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    value: "Khalti",
                    groupValue: payment,
                    onChanged: (value){
                      setState(() {
                        payment = value.toString();
                      });
                    },
                  ),

                ],
              ),
            ),
            Container(
              height: 370,
              width: 450,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(206, 216, 209, 1.0),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80))),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 10, top: 35)),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          color: Color.fromRGBO(255, 246, 234, 1.0),
                          Icons.arrow_back,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 270,
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black26,
                              )
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child:  Image.asset("assets/images/nice.jpg"),
                          )
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 90),
                    child: Text(
                      "           Liam Hemsworth",
                      style: TextStyle(
                        color: Color.fromARGB(255, 16, 53, 84),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Softwarica College of IT & E-commerce",
                      style: TextStyle(
                          color: Color.fromARGB(255, 16, 53, 84),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),

                ],
              ),
            ),
          ]),


    );

  }
}