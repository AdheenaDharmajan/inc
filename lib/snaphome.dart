import 'package:flutter/material.dart';
import 'package:inc/snapcard1.dart';



class SnapHome  extends StatelessWidget {
  const SnapHome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(235, 0, 0, 0),
     
      child: ListView(
        children: [
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            child: 
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Friends",style: TextStyle(color: Colors.white),),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                          child: Row(
                           
                            children: [
                              Padding(  
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJdABBntNLfWcFcUHe0doMkP1SIcSdI0P-ePTJcA5YPD8XOlx5LWvsNiUA3uykrlibE-E&usqp=CAU"),fit: BoxFit.cover),
                                     border: Border.all(color: Colors.purple,width: 4),
                                     
                                  ),
                                 
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                     image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2VxPlb9ML8XxDODsXRnEK9w-ppId1EKAgJw&s")),
                                      border: Border.all(color: Colors.purple,width: 4)
                                  
                                  ),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG3T2JVaiBlPD99dV7kkbWbCOd8lu_uxj_xc4RG4AExaJAbuGRe-_-fOYLc4E-U5ST-TY&usqp=CAU")),
                                     border: Border.all(color: Colors.purple,width: 4)
                                  
                                  ),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMmsfWDWAXtGDYha3vq1KSmT0XVlu8Xo_p8M2a7kdC3ETDNHbzJkgtCJ8R3_7vH0ZfyUQ&usqp=CAU")),
                                   border: Border.all(color: Colors.purple,width: 4)
                                  
                                  ),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvUkU6CF3cKzbRsPQQQ6sc4ImeSDkyInf5QQ&s")),
                                   border: Border.all(color: Colors.purple,width: 4)
                                  ),
                                ),
                              ),
                              

                             ],
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
           
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3.5,left: 12),
                  child: Container(
                    child: Text("Rush Lepcha",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.5,left: 30),
                  child: Container(
                    child: Text("Athiraa",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.5,left: 55),
                  child: Container(
                    child: Text("Rishad",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.5,left: 55),
                  child: Container(
                    child: Text("Aarathy",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.5,left: 50),
                  child: Container(
                    child: Text("Asnima",style: TextStyle(color: Colors.white),),
                  ),
                ),

              ],
            ),
          ),
          // Divider(color: Colors.white,),
          Container(
            height: 30,
            width: 50, 
            child: 
            ListTile(
              title: 
              Text("Following",style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.arrow_forward,color: Colors.white,),
            ),
            
          ),
          // Divider(color: Colors.amber,),
          SingleChildScrollView(scrollDirection: Axis.horizontal,child: 
          Row(
           children: [
            Snapcard(text: "Irshad Ismail",images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Fmr0xUAv17UG4sLe7V7x6B8PHeeCdLMWWA&s"),
            Snapcard(text: "Hanaan",images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxZULte3SykQ7C2NjjmLh8_W46tteTO-1MaQ&s",),
            Snapcard(text: "Margrate",images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-GFWJPx-RLPXvd8QY6j92rildvONOyY25ng&s",),
            Snapcard(text: "Jenifer",images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh5JWi4XU5XgyANlpWD89EGac4xSc9GsGe9Q&s",),
            Snapcard(text: "Hanaan",images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxZULte3SykQ7C2NjjmLh8_W46tteTO-1MaQ&s",),
             Snapcard(text: "Eshhhh",images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAZYw54hranOR5FxNK20j_E0B3OadivNknpQ&s",),
    
           ],
          )
          ),
          // Divider(color: Colors.amber,),
          Container(
            height: 20,
           
            child:
             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Text("Discover",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             ),
          ),
          // Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 280,
                  width: 235,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEAA8-O9RgXIiKF0brNlrD3IF_xd0J946rP4Wh-ppVHKKDBnFW"),fit: BoxFit.fill),borderRadius: BorderRadius.circular(10)),
                  child: 
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 255),
                    child: Text("Stewie Triggers",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 280,
                  width: 235,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBZbJYfCmXRnzny5mXWdiS91Sz0esTVyYIed2EUTgdqfkaZD1ehXji2D6cmqG4PWVK_s8&usqp=CAU"),fit: BoxFit.fill),borderRadius: BorderRadius.circular(10)),
                   child: 
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 255),
                    child: Text("Making India Play",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

            ],
          ),
          // Divider(),
          SizedBox(height: 20,),

           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 280,
                  width: 235,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBfmRChDfs1cZ1Ph8YUawuJ5cQU2IQ6wNx6w&s"),fit: BoxFit.fill),borderRadius: BorderRadius.circular(10)),
                  child: 
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 255),
                    child: Text("Release On Dec 5",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 280,
                  width: 235,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlim-M3slZu9Wg15nTup3k64m3N7TgwgKx4g&s"),fit: BoxFit.fill),borderRadius: BorderRadius.circular(10)),
                  child: 
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 255),
                    child: Text("MyG sales",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

            ],
          ),
        ],
      )
      
    );
  }
}