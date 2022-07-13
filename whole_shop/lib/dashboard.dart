// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 80, left: 25),
              child: Container(
                  // color: Colors.red,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/burger.png"),
                  )))),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 270),
            child: Container(
                // color: Colors.red,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/slice.png")))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 30),
            child: Container(
              height: 420,
              width: 310,
              // color: Colors.green,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/eating.png"),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 500, right: 35),
            child: Container(
              height: 250,
              width: 320,
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  new DotsIndicator(
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      activeColor: Colors.black,
                      colors: [Colors.grey, Colors.grey, Colors.grey],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Fast",
                        style: TextStyle(
                            fontSize: 24, color: Colors.yellow.shade700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "delivery",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "at",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "your",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "home",
                        style: TextStyle(
                            fontSize: 24, color: Colors.yellow.shade700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "All the best restaurants with their\n   top menu waiting for you. they \n          can't wait to your order!"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 8.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          Navigator.popAndPushNamed(context, 'S5');
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
