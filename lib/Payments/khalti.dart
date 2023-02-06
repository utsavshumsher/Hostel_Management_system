import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khalti/khalti.dart';
import 'package:sleepholic/customs/app_bar.dart';
import 'package:sleepholic/customs/custom_back_button.dart';

class khalti extends StatefulWidget {
  const khalti({Key? key}) : super(key: key);

  @override
  State<khalti> createState() => _khaltiState();
}

class _khaltiState extends State<khalti> {
  TextEditingController amountController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: buildAppBar(
        context,
        title: "Khalti Payment",
        actions: [],
        leading: CustomBackButton(tapEvent: () {})
    ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(height: 15,),

            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                labelText: "Enter Phone Number",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),

          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: pincodeController,
            obscureText: true,
            keyboardType: TextInputType.number,
           inputFormatters: <TextInputFormatter>[
             FilteringTextInputFormatter.digitsOnly,
           ],
            decoration: InputDecoration(
              labelText: "Pin Code",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.blueGrey),
                ),
                  height: 50,
                  color: Color(0xFF8BABCB),
                  child: Text("Pay with Khalti",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  onPressed: () async {
                    final service = KhaltiService(client: KhaltiHttpClient());

                    final initiationModel = await service.initiatePayment(
                      request: PaymentInitiationRequestModel(
                        amount: 1000, // in paisa
                        mobile: phoneController.text,
                        productIdentity: 'pId',
                        productName: 'Product Name',
                        transactionPin: pincodeController.text,
                        productUrl: "",
                        additionalData: {},
                      ),
                    );

                    final otp = await showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context){
                          String? _otp;
                          return AlertDialog(
                            title: Text("Enter OTP"),
                            content: TextField(
                              onChanged: (v) => _otp = v,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                label: Text("OTP")
                              ),
                              inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              ]
                            ),
                            actions: [
                              SimpleDialogOption(
                                child: Text("Submit"),
                                onPressed: () {
                                  Navigator.pop(context, _otp);
                              },
                              )
                            ],
                          );
                        });

                    if (otp!=null){
                      try {
                        final confirmationModel = await service.confirmPayment(
                          request: PaymentConfirmationRequestModel(
                            confirmationCode: otp, // the OTP code received through previous step
                            token: initiationModel.token,
                            transactionPin: pincodeController.text,
                          ),
                        );
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Payment Successful"),
                                content: Text("Verification Token: ${confirmationModel.token}"),
                              );
                            });
                      }
                      catch (e){
                        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                            SnackBar(content: Text(e.toString())));
                      }
                    }

                  }),
            )
          ],
        ),
      ),
    );

  }
}



