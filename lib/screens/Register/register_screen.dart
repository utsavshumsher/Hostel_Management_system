import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  TextEditingController FullName = new TextEditingController();
  TextEditingController Email = new TextEditingController();
  TextEditingController PhoneNumber = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 255, 239, 203),
      appBar: AppBar(title: Text("Registration"),),
      body: Column(
        children: [



          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: FullName,
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.),
                hintText: "Please Enter Your FullName",
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: Email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Please Enter Your Email",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: PhoneNumber,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: "Please Enter Your Phone Number",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
                controller: password,
                obscureText: !showPassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "Please Enter Your Password",
                    suffixIcon: showPassword ?

                    InkWell(
                        onTap: (){
                          setState(() {

                          });
                        },
                        child: Icon(Icons.panorama_fish_eye))
                        :
                    InkWell(
                        onTap: (){
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Icon(Icons.remove_red_eye))
                )
            ),
          ),
          Container(),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Go Back")),
        ],
      ),
    );
  }
}
