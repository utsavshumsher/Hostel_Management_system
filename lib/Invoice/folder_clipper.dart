import 'package:flutter/cupertino.dart';

class FolderClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    double radius = 24;
    path.moveTo(0,radius);
     //  left radius
    path.quadraticBezierTo(0, 0, radius, 0);

     //Top radius
    path.lineTo(size.width/2 - radius, 0);
    path.lineTo(size.width/2 + radius,radius);
    path.lineTo(size.width - radius,radius);

    //Right line
    path.quadraticBezierTo(size.width,radius,size.width,radius * 2);

    //Bottom line
    path.lineTo(size.width,size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;


}