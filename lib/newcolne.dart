
import 'package:flutter/material.dart';



class Newclone extends StatelessWidget {
  const Newclone({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
           
            Column(
              children: <Widget>[
                Container(
                  height: 150,
                  decoration:const BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 189, 53, 226),Color.fromARGB(255, 48, 224, 127),] ),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                  child:const Center(
                    child: Text("Check Out My Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    // alignment: Alignment.topCenter,
                  
                 
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                     child:  Column(
                       mainAxisSize: MainAxisSize.min,
                              children: [
                              const SizedBox(height: 80),
                              Card.filled(
                              child: Container(
                              padding:const EdgeInsets.only(left: 20),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*0.95,
                                  decoration:const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(color: Colors.grey ,offset: Offset(0, 4),blurRadius: 8,spreadRadius: 3)]
                                  ),
                                   child:
                                   const Align(alignment: Alignment.bottomLeft,
                                   child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                      Text("Full Name:           George Jhon Carter",style: TextStyle(fontSize: 25),textAlign: TextAlign.justify,),],
                                  ),
                                   ),
                                  ),
                                ),
                              const SizedBox(height: 10),
                              Card.filled(
                              child: Container(
                              padding:const EdgeInsets.only(left: 20),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*0.95,
                                  decoration:const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(color: Colors.grey ,offset: Offset(0, 4),blurRadius: 8,spreadRadius: 3)]
                                  ),
                                   child:
                                   const Align(alignment: Alignment.bottomLeft,
                                   child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                      Text("Father's Name:   Jhon Carter",style: TextStyle(fontSize: 25),textAlign: TextAlign.justify,),],
                                  ),
                                   ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              Card.filled(
                              child: Container(
                              padding:const EdgeInsets.only(left: 20),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*0.95,
                                  decoration:const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(color: Colors.grey ,offset: Offset(0, 4),blurRadius: 8,spreadRadius: 3)]
                                  ),
                                   child:
                                   const Align(alignment: Alignment.bottomLeft,
                                   child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                      Text("Gender:                 Male",style: TextStyle(fontSize: 25),textAlign: TextAlign.justify,),],
                                  ),
                                   ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              Card.filled(
                              child: Container(
                              padding:const EdgeInsets.only(left: 20),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*0.95,
                                  decoration:const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(color: Colors.grey ,offset: Offset(0, 4),blurRadius: 8,spreadRadius: 3)]
                                  ),
                                   child:
                                   const Align(alignment: Alignment.bottomLeft,
                                   child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                      Text("Marital Status:     Single",style: TextStyle(fontSize: 25),textAlign: TextAlign.justify,),],
                                  ),
                                   ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              Card.filled(
                              child: Container(
                              padding:const EdgeInsets.only(left: 20),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*0.95,
                                  decoration:const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(color: Colors.grey ,offset: Offset(0, 4),blurRadius: 8,spreadRadius: 3)]
                                  ),
                                   child:
                                   const Align(alignment: Alignment.bottomLeft,
                                   child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                      Text("Email:                    jane123@123.com",style: TextStyle(fontSize: 25),textAlign: TextAlign.justify,),],
                                  ),
                                   ),
                                  ),
                                ),
                                  const SizedBox(height: 10),
                              Card.filled(
                              child: Container(
                              padding:const EdgeInsets.only(left: 20),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*0.95,
                                  decoration:const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(color: Colors.grey ,offset: Offset(0, 4),blurRadius: 8,spreadRadius: 3)]
                                  ),
                                   child:
                                   const Align(alignment: Alignment.bottomLeft,
                                   child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                      Text("Username:            misty123",style: TextStyle(fontSize: 25),textAlign: TextAlign.justify,),],
                                  ),
                                   ),
                                  ),
                                ),

                              ]
                     )),
                    
                    ),
              ],
            ),
            Positioned(
              top: 90.0, 
              child: Container(
                height: 120.0,
                width: 180.0,
                    decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  
                  border: Border.all(color: Colors.yellow,width: 4.0),
                  image:const DecorationImage(image: AssetImage('assets/images/logos.jpeg') )
                  
                ),
              ),
            )
          ],
        ),
                  );
  }
}