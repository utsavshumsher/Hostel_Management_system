
import 'package:flutter/material.dart';
import 'package:sleepholic/Complain/complain.dart';

void main(){
  runApp(complain());
}

class complain extends StatelessWidget {
  const complain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Complainpage(),
    );
  }
}