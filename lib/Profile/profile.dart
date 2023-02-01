import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/screens/login/changePassword.dart';

import '../screens/login/login_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  User? user = FirebaseAuth.instance.currentUser;
  verifyEmail() async {
    if (user != null && user!.emailVerified) {
      await user!.sendEmailVerification();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.deepOrange,
          content: Text(
            "Varification Email has been sent",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Color.fromRGBO(93, 108, 137, 1.0),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, bottom: 100)),
                  ElevatedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) => AlertDialog(
                          title: const Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(93, 108, 137, 1.0),
                            ),
                          ),
                          content: const Text(
                            'Are you sure you want to logout?',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(21, 34, 56, 1.0),
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () async => {
                                await FirebaseAuth.instance.signOut(),
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                ),
                              },
                              child: const Text(
                                'Yes',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(21, 34, 56, 1.0),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(21, 34, 56, 1.0),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22)),
                        backgroundColor: Color.fromRGBO(255, 246, 234, 1.0),
                        shadowColor: Color.fromRGBO(93, 108, 137, 1),
                        padding: EdgeInsets.all(7),
                        minimumSize: Size(0, 0)),
                    child: Icon(
                      color: Color.fromRGBO(255, 0, 0, 1.0),
                      Icons.logout_rounded,
                      size: 30,
                    ),
                  ),
                ],
              )),
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
                padding: const EdgeInsets.only(top: 460),
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              backgroundColor:
                                  Color.fromRGBO(93, 108, 137, 1.0),
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
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Created:-  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "$creationTime",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.password_outlined,
                        color: Color.fromRGBO(105, 101, 101, 1.0),
                        size: 30,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Material(
                        child: InkWell(
                          splashColor: Color.fromARGB(255, 40, 124, 165),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => changePassword()));
                          },
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Color.fromRGBO(105, 101, 101, 1.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 2,
                  right: 2,
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        color: Color.fromRGBO(105, 101, 101, 1.0),
                        Icons.comment,
                        size: 30,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Material(
                        child: InkWell(
                          splashColor: Color.fromARGB(255, 20, 146, 171),
                          onTap: () {},
                          child: Text(
                            "Complaints",
                            style: TextStyle(
                              color: Color.fromRGBO(105, 101, 101, 1.0),
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 370,
          width: 450,
          decoration: BoxDecoration(
              color: Color.fromRGBO(93, 108, 137, 1.0),
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
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 246, 234, 1.0),
                        shadowColor: Color.fromRGBO(93, 108, 137, 1),
                        padding: EdgeInsets.all(7),
                        minimumSize: Size(0, 0)),
                    child: Icon(
                      color: Color.fromRGBO(21, 34, 56, 1.0),
                      Icons.call,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 246, 234, 1.0),
                        shadowColor: Color.fromRGBO(93, 108, 137, 1),
                        padding: EdgeInsets.all(7),
                        minimumSize: Size(0, 0)),
                    child: Icon(
                      color: Color.fromRGBO(21, 34, 56, 1.0),
                      Icons.message,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Positioned(
                top: 200,
                left: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/nice.jpg"),
                    radius: 40,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 90),
                child: Text(
                  "           Liam Hemsworth",
                  style: TextStyle(
                    color: Color.fromARGB(255, 238, 211, 177),
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
                      color: Color.fromARGB(255, 255, 239, 203),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "User Id:- $uid",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Email:-  $email",
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 3, 29),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              user != null && user!.emailVerified
                  ? Text(
                      "Account Verified",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  : TextButton(
                      onPressed: (() => {verifyEmail()}),
                      child: Text(
                        "Verify Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )),
            ],
          ),
        ),
      ]),
    );
  }
}
