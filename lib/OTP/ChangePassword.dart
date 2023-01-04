import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../screens/login/login_screen.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword ({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class  _ChangePasswordState extends State<ChangePassword> {
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
                  Container(

                    height: 200,
                    child: Image.asset(
                      "assets/images/MAKE YOURSELF ATA HOME.jpg",
                      fit: BoxFit.cover,
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Change \n    "
                          "Password ",
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                            'New Password',
                            style: TextStyle(color: Color.fromRGBO(143, 134, 134, 1.0), fontSize: 17),
                          ),
                        )
                      ],
                    ),


                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            // label: Text("Password"),
                            hintText: "Enter Your New Password",
                            prefixIcon: Icon(Icons.visibility)),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            ' Confirm Password',
                            style: TextStyle(color: Color.fromRGBO(
                                143, 142, 142, 1.0),fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            // label: Text("Email"),
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.visibility)),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                width: 250,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(93, 108, 137, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),

                  child: Text("Continue"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell( 
                splashColor: Colors.blue,
                onTap: (){} ,
                child: RichText(
                  text: TextSpan(
                    text: "Dont have account? ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign Up!",
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
