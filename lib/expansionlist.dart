

import 'package:flutter/material.dart';

class expansionlist extends StatelessWidget {
  var image=[
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-odaDGXJgrQeEl42OzdWP9933KDmi71-djw&s",width: 65,height: 65,),
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpfhi0_tMWHe5U9bFZlTr4TVeBOZHhu_DVew&s",width: 65,height: 65),
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzYWcUVg_I6A6RSYQ-HKY4Szdq7tBFTc65Eg&s",width: 65,height: 65),
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1vHFKnu1gxemVfkP1GylRz8gRG3_6FpUj1Q&s",width: 65,height: 65),
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLQzQqVBk7LmMbMSaEuRy3AkVv1lyGqThm4Q&s",width: 65,height: 65),
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGqiRsQzYVEAwTLEPEx5TSYlS3CvmWz3DERA&s",width: 65,height: 65),
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2u0y14c_BRqlXzEUfK8Uq48lqou9brqYvIg&s",width: 65,height: 65)
   
   
  ];
  var title=[
    'Spanakopita',
    'Saganaki',
    'Keftedekia',
    'Souvlakia',
    'Garides saganaki',
    'Loaded greek fries',
    'Ambeli chips',

  ];
 
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(centerTitle: true,
        title:const Text("Lunch Menu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),backgroundColor: Colors.blueAccent),
      body: ListView(
        children: [
          ExpansionTile(title:const Text("Starters",style: TextStyle(color: Colors.blue),),
          children: List.generate(7, (index) => ListTile(
            contentPadding:const EdgeInsets.all(10),
            leading: image[index],
            title: Text(title[index]),
            subtitle:const Text("“Part of the secret of success is to eat what you like and let the food fight it out inside.”"),
           
          ),

          ),
          ),
         
        ],
      )
        
    );
  }
      
}