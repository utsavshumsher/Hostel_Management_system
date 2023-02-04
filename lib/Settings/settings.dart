import 'package:flutter/material.dart';
import 'package:sleepholic/OTP/ChangePassword.dart';
import 'package:sleepholic/customs/app_bar.dart';
import 'package:sleepholic/customs/custom_back_button.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context,
          title: "",
          actions: [],
          leading: CustomBackButton(tapEvent: () {})
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.key,
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ChangePassword()));
                        },
                        child: Text(
                          "Password",
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
          ],
        ),
      ),
    );
  }
}
