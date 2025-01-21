// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:storage/models/product.dart';
// import 'package:storage/routes.dart';
// import 'package:storage/screens/screen1.dart';
// import 'package:storage/screens/screen2.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();
//   if (!Hive.isAdapterRegistered(ProductAdapter().typeId)) {
//     Hive.registerAdapter(ProductAdapter());
//   }

//   runApp(const Root());
// }

// class Root extends StatelessWidget {
//   const Root({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: Routes.screen1,
//       routes: {
//         Routes.screen1:(context)=>const Screen1(),
//         Routes.screen2:(context)=>const Screen2()
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Create a TextEditingController
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple TextField Example')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // TextField with controller
            TextField(controller: _controller),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show the text entered in the TextField
                print(_controller.text);
              },
              child: Text('Print Text'),
            ),
          ],
        ),
      ),
    );
  }
}

