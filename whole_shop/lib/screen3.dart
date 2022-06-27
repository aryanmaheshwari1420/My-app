// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whole_shop/screen4.dart';

class Screen3 extends StatelessWidget {
  String title = "";
  Screen3({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bG9naW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(title: Text("Sign Up Page",style: TextStyle(color: Colors.cyan.shade900,),),backgroundColor: Colors.blueGrey,),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200, left: 30),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    right: 35,
                    left: 35,
                    top: MediaQuery.of(context).size.height * 0.5),
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
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'Re-enterpassword',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "log in",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Container(
                      child: ElevatedButton(
                        child: Text("go to screen 3"),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Screen4(title: 'pizza screen',);
                          }));
                        },
                      ),
                    )
                  ],
                ),
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
