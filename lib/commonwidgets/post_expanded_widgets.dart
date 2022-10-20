import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

Widget singlePost(){
  return Container(
    height: 100,
    width: double.infinity,
    padding: EdgeInsets.only(left: 30, right: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Username", style: TextStyle(color: Colors.white70),),
            Text("Vibrant Color choice, ain't it", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
          ],
        ),
        Icon(UniconsLine.heart, color: Colors.white,)

      ],
    ),
  );
}