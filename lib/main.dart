

import 'package:flutter/material.dart';
import 'package:inc/todo.dart';





void main(){
  runApp(MyApp()
  
  
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}

// .............................................................

// class MyBottom extends StatelessWidget {
//   const MyBottom({Key? key}):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("BottomSheet"),
//         centerTitle: true,
//       ),
//       body:  Center(child: 
//       GestureDetector(
//         onDoubleTap: () {
//           showSheet(context);
//         },
//         child: Image.network(
//           'https://images.unsplash.com/photo-1522069169874-c58ec4b76be5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGFuaW1hbHxlbnwwfHwwfHx8MA%3D%3D',
//         ),
//       ),
//       )
//     );
//   }


// void showSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     builder: (context) {
//       return const SizedBox(
//         height: 100,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children:  [
//               ListTile(
//                 leading: Icon(Icons.train,color: Colors.purple,),
//                 title: Text("Train"),
//               ),
//               ListTile(
               
//                 leading: Icon(Icons.cabin,color: Colors.purple,),
//                 title: Text("Cabin"),
//               ),
//             ],
//           ),
        
//       );
//     },
//   );
// }
// }
// ............................................................................................................
// hive mainpage

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // Create a TextEditingController
//   TextEditingController _controller = TextEditingController();

//   @override
//   void dispose() {
//     // Dispose of the controller when the widget is disposed
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Simple TextField Example')),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // TextField with controller
//             TextField(controller: _controller),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Show the text entered in the TextField
//                 print(_controller.text);
//               },
//               child: Text('Print Text'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

