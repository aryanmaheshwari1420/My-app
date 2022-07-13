// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whole_shop/Pizza.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  var _pages = Pizza();
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
  
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu",),
          BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: "Cart"),
        ],
        type: BottomNavigationBarType.fixed, // this fixed the bottom items
        backgroundColor: Colors.grey,
        fixedColor: Colors.white,
        currentIndex: _selectedItem,
        onTap: (setvalue) {
          setState(() {
            _selectedItem = setvalue;
          });
        },
      ),
      // backgroundColor: Colors.yellow,

      resizeToAvoidBottomInset: false,
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
                    padding: EdgeInsets.fromLTRB(15.0, 100.0, 15.0, 10.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          contentPadding:
                              EdgeInsets.only(left: 15.0, top: 15.0),
                          hintText: "Search for recipes",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
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
                      )),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    height: 125.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        _foodCard(),
                        SizedBox(
                          width: 10.0,
                        ),
                        _foodCard(),
                        SizedBox(
                          width: 10.0,
                        ),
                        _foodCard(),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'July 15',
              style: TextStyle(
                  fontFamily: 'Quicksand', color: Colors.grey, fontSize: 14.0),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'TODAY',
              style: TextStyle(
                  fontFamily: 'Timesroman',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                ),
                child: Container(
                  height: 275.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: AssetImage("images/breakfast.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 150.0, left: 60.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'BEST OF',
                        style: TextStyle(
                            fontFamily: 'Timesroman',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'THE DAY',
                        style: TextStyle(
                            fontFamily: 'Timesroman',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 3.0,
                        width: 50.0,
                        color: Colors.orange,
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget _foodCard() {
    return Container(
      height: 125.0,
      width: 250.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(12.0),
          color: Colors.white),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                    DecorationImage(image: AssetImage("images/balanced.jpg"))),
            height: 125.0,
            width: 100.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Grilled Chicken',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              Text(
                'with fruit Salad',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),
                          image: DecorationImage(
                              image: AssetImage('images/chris.jpg')))),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'James Oliver',
                    style: TextStyle(fontFamily: 'Quicksand'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
