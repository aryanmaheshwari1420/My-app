import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("dashboard")),
    body: Center(child: Text("Hello ji ")),
    );
  }
}
