import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whole_shop/Screen1.dart';
import 'package:whole_shop/screen4.dart';
import 'package:whole_shop/screen3.dart';
import 'package:whole_shop/Screen1.dart';
import 'package:whole_shop/screen2.dart';
import 'package:whole_shop/welcomescreen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: welcomescreen(),
    routes: {
      'S1':(context)=>Screen1(title: "Screen 1"),
      'S2':(context)=>screen2(title: 'Screen 2'),
      'S3':(context)=>Screen3(title:"Screen 3"),
      'S4':(context)=>Screen4(title:"Screen 4"),
    },
  ));
}



