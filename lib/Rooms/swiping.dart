

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleepholic/Rooms/room_main.dart';


class RoomViewDemo extends StatefulWidget {
  @override
  _RoomViewDemoState createState() => _RoomViewDemoState();
}

class _RoomViewDemoState extends State<RoomViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        One_Seater(),
        TwoSeater(),
        ThreeSeater(),
        FourSeater(),
      ],
    );
  }
}
class MyBox extends StatelessWidget {
  final Color color;
  final double height;
  final String text;

  MyBox(this.color, {required this.height, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        color: color,
        height: (height == null) ? 150 : height,
        child: (text == null)
            ? null
            : Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
