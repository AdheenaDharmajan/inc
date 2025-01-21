import 'package:flutter/material.dart';

class Newcard extends StatelessWidget {
  final String image;
  const Newcard({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 160,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage(image),
                      fit: BoxFit.cover
                      )
                      ),
                      child: 
                      Column(
                        children: [
                          Expanded(
                            child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80,left: 10),
                            child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image:const NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX2Bpi6SVrLfjUDtu6e4bPUkFhgEWtGz12Rg&s")),
                            border: Border.all(color: Colors.blue))
                          ),
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