

import 'package:flutter/material.dart';
import 'package:inc/Phonhome.dart';
import 'package:inc/history.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int index=0;
  final List<Widget>screen=[
   const Phonehome(),
   const Myhistory(),
   
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
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: const Color.fromARGB(255, 56, 1, 66),
        type: BottomNavigationBarType.shifting,
        items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.purple),
         BottomNavigationBarItem(icon: Icon(Icons.double_arrow),label: 'History',backgroundColor: Colors.purple),
]),
        );
  }
}