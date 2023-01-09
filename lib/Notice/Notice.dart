import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  @override
 _NoticeState createState() => _NoticeState();

}
  class _NoticeState extends State<Notice>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice'),
      ),
      body:Container(
        color: Color.fromRGBO(255,246, 234,100),

      )
    );
  }

  }
