import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet({Key? key}) : super(key: key);

  @override
  State<bottomsheet> createState() => _bottomsheetState();


}

class _bottomsheetState extends State<bottomsheet> {
  PickedFile? _imageFile;

  final ImagePicker picker = ImagePicker();

   void takePhoto(ImageSource imageSource) async{
     final pickedFile = await picker.getImage(
         source: imageSource
     );
     setState(() {
       _imageFile = pickedFile!;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: <Widget>[
            Text("Choose Profile Photo",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          Colors.transparent
                        ),
                        icon: Icon(Icons.camera_alt_outlined, size: 25, color: Colors.black),
                        onPressed: () {
                          takePhoto(ImageSource.camera);
                        },
                        label: Text("Camera",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      TextButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent
                        ),
                        icon: Icon(Icons.image, size: 25, color: Colors.black,),
                        onPressed: () {
                          takePhoto(ImageSource.gallery);
                        },
                        label: Text("Photos",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                        ),
                        ),

                      ),

                    ],
                  )
            )
                ],
              ),
            )


    );
  }
}


