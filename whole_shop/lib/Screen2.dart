// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen2 extends StatefulWidget {
  String title = '';
  screen2({Key? key, required this.title}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  TextEditingController _passcontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  var _securetext = true;
  var _erroremail = null;
  var _errorpass = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Sign in",
          style: TextStyle(
            color: Color.fromARGB(255, 238, 243, 244),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 141, 125, 88),
      ),
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bG9naW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.cover))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // color: Colors.red,
            height: 800,
            width: 450,
            child: Padding(
              padding: const EdgeInsets.only(top: 55, left: 18),
              child: Text("Login",
                  style: TextStyle(fontSize: 50, color: Colors.white)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 12),
          child: Container(
            // color: Colors.green,
            height: 570,
            width: 370,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
                  child: TextField(
                    controller: _emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      errorText: _erroremail,
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: TextField(
                    controller: _passcontroller,
                    obscureText: _securetext,
                    decoration: InputDecoration(
                        errorText: _errorpass,
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _securetext = !_securetext;
                              });
                            },
                            icon: Icon(_securetext
                                ? Icons.remove_red_eye_sharp
                                : Icons.remove_red_eye_outlined))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_emailcontroller.text.length < 5) {
                            _erroremail = "Enter a valid email";
                          } else if (_passcontroller.text.length < 5) {
                            _errorpass = "Enter a valid pass";
                          } else {
                            return null;
                          }
                        });
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not registered yet?",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromARGB(255, 54, 60, 61)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Create an account",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                )
              ],
            ),

            // child: Column(
            //   children: [
            //     TextField(
            //       decoration: InputDecoration(
            //         fillColor: Colors.grey.shade300,
            //         filled: true,
            //         hintText: 'Email',
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 30,
            //     ),
            //     TextField(
            //       decoration: InputDecoration(
            //         fillColor: Colors.grey.shade300,
            //         filled: true,
            //         hintText: 'password',
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 20,
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [

            //         ElevatedButton(onPressed: (){}, child:Text(
            //           "Sign in",
            //           style: TextStyle(
            //               color: Colors.white70,
            //               fontSize: 24,
            //               fontWeight: FontWeight.w800),
            //         ), )
            //       ],
            //     ),
            //     const SizedBox(
            //       height: 20,
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text("Not registered yet?",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 54, 60, 61)),),
            //         TextButton(onPressed: (){}, child: Text("Create an account",style: TextStyle(fontSize: 20),))
            //       ],
            //     )
            //   ],
            // ),
          ),
        )
      ]),
    );
  }
}
