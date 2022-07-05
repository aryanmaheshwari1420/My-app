// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whole_shop/screen4.dart';

class screen_3 extends StatefulWidget {
  String title = '';
  screen_3({Key? key, required this.title}) : super(key: key);

  @override
  State<screen_3> createState() => _screen_3State();
}

class _screen_3State extends State<screen_3> {
  var _secureText = true;
  var _secureText_2 = true;
  String? _emailError = null;
  var _passError = null;
  TextEditingController _passcontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _re_passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up Page",
          style: TextStyle(
            color: Color.fromARGB(255, 238, 243, 244),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 146, 147, 117),
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
              padding: const EdgeInsets.only(top: 30, left: 23),
              child: Text("Sign up",
                  style: TextStyle(fontSize: 50, color: Colors.white)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 122, left: 25, right: 25),
          child: Container(
            //  color: Colors.green,
            height: 530,
            width: 370,
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    errorText: _emailError,
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
                      errorText: _passError,
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
                  obscureText: _secureText_2,
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
                              _secureText_2 = !_secureText_2;
                            });
                          },
                          icon: Icon(_secureText_2
                              ? Icons.remove_red_eye_sharp
                              : Icons.remove_red_eye_outlined))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_emailcontroller.text.length < 8) {
                            _emailError = "Enter a valid email";
                          } else if (_passcontroller.text.length < 5) {
                            _passError = "Enter a valid pass";
                          } else {
                            return null;
                          }
                        });
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
                      }
                      )
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
