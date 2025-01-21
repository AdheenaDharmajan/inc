import 'package:flutter/material.dart';

class Mycard  extends StatelessWidget {
  const Mycard ({super.key});

  @override
  Widget build(BuildContext context) {
    return     Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 160,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT9Rc9E0uAnIn69lB-87VHaDjbdbUzaIgzhg&s"),
                      fit: BoxFit.cover)
                      ),
                  
                      child: Column(
                        children:[
                        Expanded(
                        child:
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                IconButton(onPressed: (){}, icon:const Icon(Icons.add_circle,color: Colors.white,size: 40,)
                            ),
                              ]
                            ),
                              
                          
                          ),
                             const Padding(
                             padding:  EdgeInsets.all(8.0),
                             child: Text(
                                "Add to story",
                                 style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
            ),
          ),
        ), 
        ] 
        )  
        )
                              
                  
    );
   
  }
}