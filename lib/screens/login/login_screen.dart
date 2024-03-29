import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/about/aboutusScreens.dart';
import 'package:sleepholic/dashboard.dart';
import 'package:sleepholic/homepage/homepage.dart';
import 'package:sleepholic/screens/Register/register_screen.dart';
import 'package:sleepholic/screens/forgot_pass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  bool _obsecured = true;

  var email;
  var password;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  userLogin() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print(userCredential);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage()));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.blue,
          content: Text(
            "Welcome to Hostel Management System",
            style: TextStyle(fontSize: 19),
          )));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User fond for this E-mail");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              "No User Found for this Email",
              style: TextStyle(fontSize: 19),
            )));
      } else if (e.code == "wrong-Password") ;
      print("Wrong Password");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Wrong Password for this User",
            style: TextStyle(fontSize: 19),
          )));
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                      fit: BoxFit.cover,
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Form(
                key: _formkey,
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Email',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
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
                              hintText: "Please enter your email",
                              prefixIcon: Icon(Icons.accessibility_outlined)),
                          controller: emailController,
                          validator: ((value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Email";
                            } else if (!value.contains("@")) {
                              return "Please enter valid email";
                            }
                            return null;
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Password',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
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
                            autofocus: false,
                            obscureText: _obsecured,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                // labelText: "Password",
                                hintText: "Please enter your password",
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: IconButton(
                                  icon: _obsecured
                                      ? const Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _obsecured = !_obsecured;
                                    });
                                  },
                                )),
                            controller: passwordController,
                            validator: ((value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Password";
                              }
                              return null;
                            })),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forgot_Pass()));
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Color.fromRGBO(21, 34, 56, 1.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 340,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = emailController.text;
                        password = passwordController.text;
                      });
                      userLogin();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(93, 108, 137, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: Text("Login"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
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
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
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
