// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';


class welcomescreen extends StatelessWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Welcome Screnn")),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,children: [
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, "S1");
              }, child: Text("screen 1 ")),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, "S2");
              }, child: Text("screen 2 ")),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, "S3");
              }, child: Text("screen 3 ")),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, "S4");
              }, child: Text("screen 4 ")),
            ],
          ),
        ),
      ),
    );
    
  }
}