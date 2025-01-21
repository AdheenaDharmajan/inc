

import 'package:flutter/material.dart';

class Mycenter extends StatelessWidget {
  const Mycenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  
      
      Stack(
        children: [
          Center(
           child: Column(
              children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration:const BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF8E24AA), Color(0xFFFB8C00)])),
                    child:
                    const Text("Login",style: TextStyle(color: Colors.white,fontSize:20, ),textAlign: TextAlign.center,),
                 
                  ),
                    Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                   
                  )
              ]
                ),
             
            ),
        
          Center(
            child: Column(
              children: [
               const  SizedBox(height: 80,),
          
             Container(
              height: 500,
               width: 400,
              color: Colors.white,
              padding:const EdgeInsets.all(20),
             
             
              child: Column(

                mainAxisSize: MainAxisSize.min,
                children: [
                 
                const  SizedBox(height: 10,),
                const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf3myQGZ9QQmZOefKiyXCOk9J0Wl-yOUGHoYpVNHgwcjen2biXFuIUMfNqd8vcZW3M-Gk&usqp=CAU"),
                maxRadius: 50,),
                  const Text(
                    'My Recipes',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                   
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off)
                     
                    ),
                  ),
                  const Align(alignment: Alignment.centerRight,
                  child: 
                  Text("Forgot your password?",style: TextStyle(color: Colors.grey,fontSize: 15),),),
                  const SizedBox(height: 30,),
                
                  ElevatedButton(
                
                    onPressed: (
                      
                    ) {
                     
                    },
                    child:const Text('Login'),
                  
                    ),
                    const SizedBox(height: 20,),
                    const Text("OR sign up with social media",style: TextStyle(color: Colors.grey,fontSize: 15),),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       
                        Icon(Icons.facebook,color: Colors.blue,),
                        Icon(Icons.messenger,color: Colors.blue,)
                        
                      ],
                    )
                ]
                  )
                
             )
             
              ] 
              ),
          )
        ]
            ),
      )
          );
  }
}