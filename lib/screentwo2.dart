import 'package:flutter/material.dart';

class Textfields  extends StatelessWidget {
  const Textfields ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("textfield"),
      centerTitle: true),
      body: 
      Column(
        children: [
          TextField(
            decoration: InputDecoration(
             
              helperText: "UserName"
            ),
          ),
          SizedBox(height: 20,),
          TextField(
             decoration: InputDecoration(
             
              helperText: "Password"
            ),
          )
        ],
      ),
      
    );
  }
}