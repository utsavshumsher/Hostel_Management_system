import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/login/login_screen.dart';

class changePassword extends StatefulWidget {
  const changePassword({super.key});

  @override
  State<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  final _formkey = GlobalKey<FormState>();

  var newPassword = "";

  final newPasswordController = TextEditingController();
  @override
  void dispose() {
    newPasswordController.dispose();
    super.dispose();
  }

  final currentUser = FirebaseAuth.instance.currentUser;

  changePassword() async {
    try {
      await currentUser!.updatePassword(newPassword);
      FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.blueAccent,
          content: Text(
            "Your Password has been successfully changes, Login Again",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          )));
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome User",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xfff123456),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 131, 147, 179),
        ),
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(children: [
            Container(
              child: Text(
                "Change your Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Form(
              key: _formkey,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your new password",
                    hintText: "New Password",
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff123456),
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(200, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  setState(() {
                    newPassword = newPasswordController.text;
                  });
                  changePassword();
                }
              },
              child: Text(
                "Change Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}