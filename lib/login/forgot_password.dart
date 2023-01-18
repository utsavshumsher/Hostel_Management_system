import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF6EA),
      appBar: AppBar(
          title: Center(
        child: Text('Forgot Password'),
      )),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 240,
                  width: 240,
                ),
              ),
              Container(
                child: Text(
                  "Forgot password",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  String pattern =
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?)*$";
                  RegExp regex = RegExp(pattern);
                  if (value == null || value.isEmpty || !regex.hasMatch(value))
                    return 'Enter a valid email address';
                  else
                    return null;
                  //return null;
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[350],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    // label: Text("Email"),
                    hintText: "Please enter your email",
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              SizedBox(
                height: 40,
              ),
              // ElevatedButton(
              //   child: Text('Forgot'),
              //   onPressed: () {},
              // ),
              Container(
                width: 400,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Validation success')),
                      );

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const OTPScreen()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Unsuccessfull ')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(21, 34, 56, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: Text("Forgot Password"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
