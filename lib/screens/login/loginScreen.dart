import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Login",
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
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Text("Email"),
                            hintText: "Please enter your email",
                            prefixIcon: Icon(Icons.accessibility_outlined)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                            label: Text("Password"),
                            hintText: "Please enter your password",
                            prefixIcon: Icon(Icons.visibility)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Login"))),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: "Dont have account? ",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: const TextStyle(
                        color: Colors.redAccent,
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
