

import 'package:flutter/material.dart';
import 'package:inc/Phonhome.dart';
import 'package:inc/botnav.dart';

class Myphonepay  extends StatelessWidget {
  const Myphonepay ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Add Adress",style: TextStyle(color: Colors.white),),
        backgroundColor:const Color.fromARGB(198, 95, 2, 104),
        leading: IconButton(onPressed: (){}, icon:const Icon(Icons.person),color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.notifications),color: Colors.white),
          const SizedBox(width: 20),
          IconButton(onPressed: (){}, icon:const Icon(Icons.question_mark_rounded),color: Colors.white)

        ],
      ),
      body: Phonehome(),
      bottomSheet:  bottomnav(),
            
        );
      
  }
}