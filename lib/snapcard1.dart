import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Snapcard extends StatelessWidget {
  final String text;
  final String images;
  const Snapcard({super.key,required this.text,required this.images});

  @override
  Widget build(BuildContext context) {
    return 
     Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 160,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage(images),
                      fit: BoxFit.cover)
                      ),
                  
                      child: 
                      Padding(
                        padding: const EdgeInsets.only(top: 140),
                        child: Column(
                          children:[
                         
                               Text(
                                  text,
                                   style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 13
                                  
                                    ),
                                  ),
                                
                                ] 
                                ),
                      )  
        )
                              
                  
    );
  }
}