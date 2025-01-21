import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';


class Phonehome  extends StatelessWidget {
  const Phonehome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 29, 1, 34),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 460,
                  child: CarouselSlider(items: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiWnAbtcCJPCE-5VMFbknvPzlaDvgb6Euq6Q&s",fit: BoxFit.cover,)

                  ], 
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16/9,
                    height: 200,
                    
                    initialPage: 3,
                    autoPlayInterval: Duration(seconds: 3)
                  )
                  ),
                ),
              ],
            ),
            
            
          ),
        //  const Divider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  height: 190,
                  width: 460,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 56, 1, 66),borderRadius: BorderRadius.circular(20)),
                  child:
                   Padding(
                     padding:  EdgeInsets.only(left: 15,top: 15),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        height: 30,width: 200,
                        child:
                        Text("Transfer Money",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)
                     
                     ), 
                     Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround, 
    children: [
      Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.white),
            ),
          ),
          SizedBox(height: 5), 
          Text('To Mobile Number', style: TextStyle(color: Colors.white,fontSize: 10),), 
        ],
      ),
      Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: Colors.white),
            ),
          ),
          SizedBox(height: 5),
          Text('To Bank/UPI ID', style: TextStyle(color: Colors.white,fontSize: 10)),
        ],
      ),
      Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.refresh, color: Colors.white),
            ),
          ),
          SizedBox(height: 5),
          Text('To SelfAccount', style: TextStyle(color: Colors.white,fontSize: 10)),
        ],
      ),
      Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_filled, color: Colors.white),
            ),
          ),
          SizedBox(height: 5),
          Text('Check Bank Balance', style: TextStyle(color: Colors.white,fontSize: 10)),
        ],
      ),
    ],
  ),
),
// Divider(),
Row(
  children: [
    Column(
      children: [
        Container(height: 30,
        width: 180,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(10)), 
        child: 
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 5),
          child: Text("UPI Lite: Try Now",style: TextStyle(color: Colors.white),),
        ),
       
        ),
       
        
      ],
    ),

     Padding(
       padding: const EdgeInsets.only(left: 30),
       child: Column(
        children: [
          Container(height: 30,
          width: 220,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(10)), 
          child: 
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 5),
            child: Text("UPI ID: 8590159230",style: TextStyle(color: Colors.white),),
          ),
         
          ),
         
          
        ],
           ),
     ),
    
  ],
),


  ],
    ),
           ),
                      
                
             )

                   
                       
                     
                   
                   
              ],
            ),
          
            
        
      ),
    
      Row(
        children: [
          SizedBox(
            height: 50,
            width: 500,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                           decoration:BoxDecoration(color:Color.fromARGB(255, 56, 1, 66),borderRadius: BorderRadius.circular(10)),
                           child: Row(
                            children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.wallet,color: Colors.purple,),
                            ),
                            Text("PhonePe wallet",style: TextStyle(color: Colors.white),)
                            ],

                           ),
                           
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                             decoration:BoxDecoration(color:Color.fromARGB(255, 56, 1, 66),borderRadius: BorderRadius.circular(10)),
                              child: Row(
                            children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.wallet_giftcard,color: Colors.purple,),
                            ),
                            Text("Explore Rewards",style: TextStyle(color: Colors.white),)
                            ],

                           ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                           decoration:BoxDecoration(color:Color.fromARGB(255, 56, 1, 66),borderRadius: BorderRadius.circular(10)),
                            child: Row(
                            children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.volume_up,color: Colors.purple,),
                            ),
                            Text("PhonePe wallet",style: TextStyle(color: Colors.white),)
                            ],

                           ),
                          )
                        ],
                      ),
                    ),

                  ],
                )
              
                
                
              ],
            ),
            
          )
        ],
      ),
    
      Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 150,
          width: 460,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 56, 1, 66),
          borderRadius: BorderRadius.circular(20)
          ),
          child: 
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 180,
                  child: Text("Recharge & Pay Bills",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.battery_charging_full, color: Colors.purple,size: 40),
                              ),
                            ),
                            SizedBox(height: 5), 
                            Text('Mobile Recharge', style: TextStyle(color: Colors.white,fontSize: 10),), 
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                               
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.attach_money, color: Colors.purple,size: 40),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('Loan Payment', style: TextStyle(color: Colors.white,fontSize: 10),), 
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.credit_card, color: Colors.purple,size: 40),
                              ),
                            ),
                            SizedBox(height: 5), 
                            Text('Credit Card Payment', style: TextStyle(color: Colors.white,fontSize: 10),), 
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                             
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_home_rounded, color: Colors.purple,size: 40,),
                              ),
                            ),
                            SizedBox(height: 5), 
                            Text('Rent', style: TextStyle(color: Colors.white,fontSize: 10),), 
                          ],
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    
       Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 150,
          width: 460,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 56, 1, 66),
          borderRadius: BorderRadius.circular(20)
          ),
          child: 
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 180,
                  child: Text("Loan",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.speed_sharp, color: Colors.purple,size: 40),
                              ),
                            ),
                            SizedBox(height: 5), 
                            Text('Credit Speed', style: TextStyle(color: Colors.white,fontSize: 10),), 
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.mobile_friendly, color: Colors.purple,size: 40),
                              ),
                            ),
                            SizedBox(height: 5), 
                            Text('Mobile Loan', style: TextStyle(color: Colors.white,fontSize: 10),),
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bar_chart, color: Colors.purple,size: 40),
                              ),
                            ),
                            SizedBox(height: 5), 
                            Text('Gold Loan', style: TextStyle(color: Colors.white,fontSize: 10),),
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bike_scooter, color: Colors.purple,size: 40,),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('Bike Loan', style: TextStyle(color: Colors.white,fontSize: 10),), 
                          ],
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
       ),

      
        ]
      )

    );
  }
}