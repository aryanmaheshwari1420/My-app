// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whole_shop/screen3.dart';
import 'package:whole_shop/screen4.dart';
import 'package:whole_shop/welcomescreen.dart';

class Screen2 extends StatelessWidget {
  String title = "";
  Screen2({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bG9naW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(title: Text("Sign in",style: TextStyle(color: Color.fromARGB(255, 238, 243, 244),),),backgroundColor: Color.fromARGB(255, 141, 125, 88),),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100, left: 30),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.3),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      ElevatedButton(onPressed: (){}, child:Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ), )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not registered yet?",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 54, 60, 61)),),
                      TextButton(onPressed: (){}, child: Text("Create an account",style: TextStyle(fontSize: 20),))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: null,
    //   body:
    //   Image(image: NetworkImage("https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bG9naW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"))
    //   //  Container(
    //   //   decoration: BoxDecoration(
    //   //     image: DecorationImage(
    //   //         image: NetworkImage(
    //   //             'https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bG9naW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    //   //         fit: BoxFit.cover),
    //   //   ),
    //   // ),
    // );
  }
}
