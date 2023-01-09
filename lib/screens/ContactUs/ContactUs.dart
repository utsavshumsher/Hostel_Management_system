import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(



        appBar: AppBar(


          title: Text("Contact Us",style: TextStyle(color:Colors.black),),
          backgroundColor: Color.fromRGBO(196, 164, 132, 80
          ),
        ),

        body:

      Padding(
        padding: const EdgeInsets.fromLTRB(25.0,40,25,0),

        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [

                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/image6.png"),
                    radius: 70,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.account_circle),
                    hintText: 'Name',
                      labelText: 'Name',

                  ),
                ),


                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.subject_rounded),
                    hintText: 'Subject',
                      labelText: 'Subject',

                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.email),
                    hintText: 'Email',
                    labelText: 'Email',
                  )
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: (){

                    }, child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 25),
                )

                ),

                Container(
                  child: Text("Thank you  for your queries! ",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                  padding: const EdgeInsets.fromLTRB(25, 60, 25, 30),


                )

          ],
            )
          ),
        ),
      ),

      ),



    );
  }



}