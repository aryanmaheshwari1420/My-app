// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:whole_shop/Screen2.dart';
import 'package:whole_shop/screen4.dart';
import 'package:whole_shop/screen3.dart';

class Screen1 extends StatelessWidget {
  String title = "";
  Screen1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&w=1000&q=80"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: null,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&w=1000&q=80'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 505),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 100.0, vertical: 8.0),
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Screen2(title: "Login");
                          }));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: 24),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 100.0, vertical: 8.0),
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Screen3(title: "Sign Up");
                        }));

                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w300),
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
