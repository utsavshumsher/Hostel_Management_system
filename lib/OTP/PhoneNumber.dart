import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/screens/login/loginScreen.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber ({Key? key}) : super(key: key);

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class  _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF6EA),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 40.0,),
                    Container(
                      height: 330,
                      width: 350,
                      child: Image.asset(
                        "assets/images/MAKE YOURSELF ATA HOME.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Enter Your Phone Number',
                              style: TextStyle(
                                  color: Color.fromRGBO(134, 128, 128, 1.0),
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),


                      Container(
                        // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(171, 168, 168, 1.0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration:  InputDecoration(
                              border: InputBorder.none,
                              // label: Text("Password"),
                              hintText: "+977 9840********",
                              prefixIcon: Icon(Icons.phone)
                            ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        width: 250,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(93, 108, 137, 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),

                          child: Text("SEND CODE"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );

  }
}
