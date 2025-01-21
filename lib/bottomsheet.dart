

// import 'package:flutter/material.dart';


// void main(){
//   runApp(MaterialApp(home: bottomsheet(),debugShowCheckedModeBanner: false,));
// }

// class bottomsheet extends StatelessWidget {
//   const bottomsheet({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Center(
//         child:GestureDetector(
//           onLongPress: (){
//             showSheet(context);
//           },
//           child: Image.network(
//               "https://images.unsplash.com/photo-1522069169874-c58ec4b76be5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGFuaW1hbHxlbnwwfHwwfHx8MA%3D%3D"),

//         ) ,
//       )
//     );
//   }

//   void showSheet(BuildContext context) {
//     showModalBottomSheet(context: context, builder: (context) {
//       return Container(
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ListTile(
//                 //leading: Icon(Icons.share),
//                 leading: Icon(
//                     Icons.facebook,
//                     color: Colors.blue),
//                 title: Text('facebook'),
//               ),
//               ListTile(
//                 leading: Icon(Icons.messenger,
//                   color: Colors.green,),
//                 title: Text('messenger'),

//               )
//             ]
//         ),
//       );
//     }
//       );
//     }
//   }




