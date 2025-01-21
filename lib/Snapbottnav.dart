import 'package:flutter/material.dart';
import 'package:inc/camera.dart';
import 'package:inc/loc.dart';
import 'package:inc/msge.dart';
import 'package:inc/play.dart';
import 'package:inc/snaphome.dart';



class Mybottomnav extends StatefulWidget {
  const Mybottomnav({super.key});

  @override
  State<Mybottomnav> createState() => _MybottomnavState();
}

class _MybottomnavState extends State<Mybottomnav> {
  int index=0;
  final List<Widget>screen=[
    Location(),
    Messege(title: "1 Messege recieved",),
    Camera(),
    SnapHome(),
    Platbutton()
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: screen[index],
       bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){               
          setState(() {
            index = tapindex;
          });
        },
        currentIndex: index,
        backgroundColor: Colors.black,
        selectedItemColor:  Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        items: [
         BottomNavigationBarItem(icon: Icon(Icons.location_on),label: "Location",backgroundColor: Colors.white),
         BottomNavigationBarItem(icon: Icon(Icons.message),label: "Messege", backgroundColor: Colors.white),
         BottomNavigationBarItem(icon: Icon(Icons.camera),label: "Camera",backgroundColor: Colors.white),
         BottomNavigationBarItem(icon: Icon(Icons.group),label: "Friends",backgroundColor: Colors.white),
         BottomNavigationBarItem(icon: Icon(Icons.play_circle),label: "Video",backgroundColor: Colors.white),
]),
    );
  }
}