import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whole_shop/Home_page.dart';
import 'package:whole_shop/SignUp.dart';
import 'package:whole_shop/WelcomeScreen.dart';
import 'package:whole_shop/dashboard.dart';
import 'package:whole_shop/Pizza.dart';
import 'package:whole_shop/WelcomeScreen.dart';
import 'package:whole_shop/Login.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
    routes: {
      'S1': (context) => WelcomeScreen(),
      'S2': (context) => Login(),
      'S3': (context) =>  SignUp(),
      'S4': (context) => dashboard(),
      'S5': (context) => HomePage()
    },
  ));
}
