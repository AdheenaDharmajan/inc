import 'package:flutter/material.dart';
import 'package:inc/registerhome.dart';

class Registerex  extends StatelessWidget {
  const Registerex ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 45,
        backgroundColor: Color.fromARGB(232, 230, 131, 95),
        title: Text("Register"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
        ),
        body: Reghome(),
    );
  }
}