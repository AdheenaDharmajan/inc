import 'dart:async';


import 'package:flutter/material.dart';
import 'package:inc/socialmedia.dart';

class Mysplash extends StatefulWidget {
  const Mysplash({super.key});

  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () { 
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Mysocialmedia()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("splashpage"),
        centerTitle: true,
      ),
    );
  }
}