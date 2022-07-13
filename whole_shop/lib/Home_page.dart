// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                color: Colors.grey,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            contentPadding: EdgeInsets.only(left: 15.0,top: 15.0),
                            hintText: "Search for recipes",
                            hintStyle: TextStyle(color: Colors.grey
                            ),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0),
                  child:Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.orange,
                      style: BorderStyle.solid,
                      width: 3.0)
                    ),
                  ) ,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('POPULAR RECIPES',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.bold)),
                              Text('THIS WEEK',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Timesroman',
                                      fontWeight: FontWeight.bold)),

                        ],
                      )
                    ],

                  ),
                  ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
