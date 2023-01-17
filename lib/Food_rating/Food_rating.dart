import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodRating extends StatefulWidget {
  @override
  State<FoodRating> createState() => _FoodRatingState();

}
class _FoodRatingState extends State<FoodRating>{
  double? ratingValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Food rating",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        )
      ),
      body: Center(
        child: RatingBar.builder(
            itemBuilder: (context,index)=> Icon(
              Icons.star_rounded,
              color: Color(0xffffcb00),
            ),
            onRatingUpdate: (newValue) =>
          setState(() {
             ratingValue = newValue;
             Container(
              child: (
              Image.asset("assets/images/Rating.jpg",fit: BoxFit.cover,
                height: 250,
                width: 250,
              )
              ),
             );
          }),
        //  glowColor: Color(0xffffcb00),

        ),
      ),

    );
  }

}

