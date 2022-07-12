import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whole_shop/Screen1.dart';
import 'package:whole_shop/dashboard.dart';
import 'package:whole_shop/screen4.dart';
import 'package:whole_shop/screen3.dart';
import 'package:whole_shop/Screen1.dart';
import 'package:whole_shop/screen2.dart';
import 'package:whole_shop/screen_3.dart';
import 'package:whole_shop/welcomescreen.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: welcomescreen(),
    routes: {
      'S1': (context) => Screen1(title: "Screen 1"),
      'S2': (context) => screen2(title: 'Screen 2'),
      'S3': (context) => Screen3(title: "Screen 3"),
      'S4': (context) => Screen4(title: "Screen 4"),
      'S5':(context) =>  screen_3(title: "Screen 3"),
      // 'S6':(context) =>  dashboard(),
      
      // 'S5':((context) => dashboard()),
    },
  ));
}
