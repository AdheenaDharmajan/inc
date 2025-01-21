


import 'package:flutter/material.dart';


class Mybutton  extends StatelessWidget {
  const Mybutton ({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool>showAlert()async{
      return await showDialog(
        context:context,
        builder:(context){
          return AlertDialog(
            title:Text("confirm exit"),
            content:Text("are you really want to exit"),
            actions: [TextButton(onPressed: (){}, child: Text('Yes')
            ),
            TextButton(onPressed: (){}, child: Text("No")
            ),
            TextButton(onPressed: (){}, child: Text("cancel")
            )
            ],
          );
        }
      );
    }
    return WillPopScope(child: Text('press back button to exit'), onWillPop: showAlert);
    
  }
}