import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sleepholic/OTP/ChangePassword.dart';
import '../customs/custom_icons.dart';



class OtpVerify extends StatefulWidget {

  const OtpVerify({super.key});



  @override

  State<OtpVerify> createState() => _OtpVerifyState();

}



class _OtpVerifyState extends State<OtpVerify> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color.fromRGBO(255, 246, 234, 1.0),

      appBar: AppBar(

        backgroundColor: const  Color.fromRGBO(255, 246, 234, 1.0),

        elevation: 0,

        //   children: [

        leading: Center(

          child: Container(

            child: CustomIcon(

              icon: Icons.arrow_back,

              onPressed: () {

                Navigator.of(context).pop();

              },

            ),

          ),

        ),

      ),

      body: Container(

        padding: EdgeInsets.symmetric(horizontal: 25.0),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(

              padding: EdgeInsets.only(top: 50, bottom: 20),

              child: Text("Verify OTP",

                  style: TextStyle(

                    fontSize: 32,

                    fontWeight: FontWeight.w400,

                  )),

            ),

            // SizedBox(height:15),



            Text(

              "Please enter 5 digit OTP code",

              style: TextStyle(

                fontSize: 15,

                fontWeight: FontWeight.w400,

              ),

            ),

            SizedBox(height: 30),

            PinCodeTextField(

              length: 5,

              obscureText: false,

              appContext: context,

              animationType: AnimationType.fade,

              pinTheme: PinTheme(

                shape: PinCodeFieldShape.box,

                borderRadius: BorderRadius.circular(5),

                fieldHeight: 58,

                fieldWidth: 58,

                activeFillColor: Color(0xFFD1D1D1),

                activeColor: Color(0xFF152238),

                inactiveColor:Color(0xFFD1D1D1),

                inactiveFillColor: Color(0xFFD1D1D1),

                selectedColor: Color(0xFF152238),

                selectedFillColor: Color(0xFFD1D1D1),

              ),

              animationDuration: Duration(milliseconds: 300),

              enableActiveFill: true,

              onCompleted: (v) {

                print("Completed");

              },

              onChanged: (value) {},

            ),



            CustomButton(

              title: "Verify OTP",

              onPressed: () {

                Navigator.push(

                    context,

                    MaterialPageRoute(

                      builder: (context)=>ChangePassword(),

                    )

                );

              },

            ),

            SizedBox(height:20),



            Container(

              margin:EdgeInsets.only(left:10),

              child: RichText(

                  text: TextSpan(

                      text:"Didn't received any code ?",

                      style:TextStyle(

                        fontSize:15,

                        color:Color.fromARGB(255, 61, 60, 60),

                      ),

                      children:[

                        TextSpan(

                          text: "Resend code",

                          style:TextStyle(
                              color:Color(0xFF5D6C89),
                            fontWeight: FontWeight.bold

                        ),

                        ),

                      ]

                  )

              ),

            )

          ],

        ),

      ),

    );

  }

}

