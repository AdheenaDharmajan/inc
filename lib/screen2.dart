import 'package:flutter/material.dart';

class Screentwo  extends StatelessWidget {
  final String name;
  const Screentwo ({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(name),backgroundColor: Colors.green, //appback backbutton
      ),
      body: SafeArea(child: 
      Column(
        children: [
          Text("Screen2"),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop(); // body backbutton
          }, child: Text("back"))
        ],
      ),
      )
    );
  }
}