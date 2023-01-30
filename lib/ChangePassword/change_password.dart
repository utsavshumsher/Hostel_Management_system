import 'package:flutter/material.dart';
import 'package:sleepholic/Profile/profile.dart';
import 'package:sleepholic/customs/app_bar.dart';
import 'package:sleepholic/customs/custom_back_button.dart';

class Changepassword extends StatelessWidget {
  const Changepassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(
        context,
        title: "Change Password",
        actions: [],
        leading: CustomBackButton(
            tapEvent: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            }
        )

      ),
      backgroundColor: Color.fromRGBO(189, 208, 227, 1.0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(

          ),
          ],
        ),
      ),
    );
  }
}
