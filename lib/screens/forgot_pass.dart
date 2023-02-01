import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/login/login_screen.dart';
import 'package:sleepholic/screens/Register/register_screen.dart';

class Forgot_Pass extends StatefulWidget {
  const Forgot_Pass({super.key});

  @override
  State<Forgot_Pass> createState() => _Forgot_PassState();
}

class _Forgot_PassState extends State<Forgot_Pass> {
  final _formkey = GlobalKey<FormState>();

  var email = "";

  final emailController = TextEditingController();

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.blue,
          content: Text(
            "Reset Password has been sent to your email",
            style: TextStyle(fontSize: 20),
          )));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User Found for this E-mail");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              "No User Found for this email",
              style: TextStyle(fontSize: 20),
            )));
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset Password")),
      backgroundColor: Color(0xFFFFF6EA),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            Container(
              child: Form(
                key: _formkey,
                child: Text(
                  "Reset  Link  will  be  sent  to  your  email  id!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Color.fromARGB(255, 3, 33, 49)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Enter your  e-mail",
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter E-mail";
                } else if (!value.contains("@")) {
                  return "E-mail must contain (@) ";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        minimumSize: Size(140, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          email = emailController.text;
                        });
                        resetPassword();
                      }
                    },
                    child: Text(
                      "Send Email",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Color.fromARGB(255, 10, 40, 129)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 10, 40, 129)),
                    ),
                  ),
                  Text(
                    "     Signup",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Color.fromARGB(255, 10, 40, 129)),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
