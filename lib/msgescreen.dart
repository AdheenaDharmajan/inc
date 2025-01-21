import 'package:flutter/material.dart';

class Screentwoo  extends StatelessWidget {
  final String name;
  const Screentwoo ({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Adheena",style: TextStyle(color: Colors.white),),centerTitle: true,
       backgroundColor: Colors.black, //appback backbutton
      ),
      // body: SafeArea(child: 
      // Column(
      //   children: [
          
      //     Padding(
      //       padding: const EdgeInsets.only(top: 520,left: 220),
      //       child: ElevatedButton(onPressed: (){
      //         Navigator.of(context).pop(); // body backbutton
      //       }, child: Text("back")),
      //     )
      //   ],
      // ),
      // )
    );
  }
}