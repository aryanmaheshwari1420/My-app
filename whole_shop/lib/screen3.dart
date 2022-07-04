// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whole_shop/screen4.dart';

class Screen3 extends StatefulWidget {
  String title = "";
  Screen3({Key? key, required this.title}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  var _secureText = true;
  TextEditingController _passcontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _re_passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bG9naW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sign Up Page",
            style: TextStyle(
              color: Color.fromARGB(255, 238, 243, 244),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 141, 125, 88),
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 30),
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
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailcontroller,
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
                      controller: _passcontroller,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          hintText: 'password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                              icon: Icon(_secureText
                                  ? Icons.remove_red_eye_sharp
                                  : Icons.remove_red_eye_outlined))),
                      obscureText: _secureText,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _re_passcontroller,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'Re-enterpassword',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                         suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                              icon: Icon(_secureText
                                  ? Icons.remove_red_eye_sharp
                                  : Icons.remove_red_eye_outlined))
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print(
                                "email:${_emailcontroller.text} \n password : ${_passcontroller.text} \n re-pass : ${_re_passcontroller.text}");
                          },
                          child: Text(
                            "sign up",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 24,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueAccent,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already registered?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 54, 60, 61))),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'S2');
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                    Container(
                      child: ElevatedButton(
                        child: Text("go to screen 4"),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Screen4(
                              title: 'pizza screen',
                            );
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
