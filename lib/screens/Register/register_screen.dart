import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    child: Image.asset(
                      "assets/images/MAKE YOURSELF ATA HOME.jpg",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Sign Up",
                      style:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Full Name',
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
                            hintText: "Enter your name",
                            prefixIcon: Icon(Icons.accessibility_outlined)),
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
                            'Password',
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
                            hintText: "Please enter your password",
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(93, 108, 137, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: Text("Sign Up"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: "Already Have an Account? ",
                  style: const TextStyle(
                    color:  Color.fromRGBO(93, 108, 137, 1.0),
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: const TextStyle(
                        color:  Color.fromRGBO(21, 34, 56, 1.0),
                        fontSize: 18,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
