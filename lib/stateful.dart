// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const Myroot());
// }

// class Myroot extends StatelessWidget {
//   const Myroot({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myhome(),
//     );
//   }
// }
// class Myhome extends StatefulWidget {
//   const Myhome({super.key});

//   @override
//   State<Myhome> createState() => _MyhomeState();
// }

// class _MyhomeState extends State<Myhome> {

//   @override
//   void initState() {
//     // TODO: implement initState

//     print("Athul");
//     super.initState();
//   }
//   int count=0;
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title:const Text("CountApp",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold ),),
//         backgroundColor: Colors.grey,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(count.toString(),style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//       ),
//       floatingActionButton: SizedBox(
//         width: MediaQuery.of(context).size.width*0.1,
//         child: Row(
//           children: [
//             IconButton(onPressed: (){
//               setState(() {
//                 count++;
//               });
//             }, icon:const Icon(Icons.add)),
            
//             IconButton(onPressed: (){
//               setState(() {
//                 count--;
//               });
//             }, icon:const Icon(Icons.remove)),
//           ],
//         ),
//       ),
      
//     );
//   }
// }
