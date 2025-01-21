import 'package:flutter/material.dart';
import 'package:inc/screen2.dart';


class Screenone  extends StatelessWidget {
  const Screenone ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  
      ListView.separated(itemBuilder: (context,index){
        return ListTile(
          title: Text("person $index"),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Screentwo(name: "person $index");
            }
            )
            );
          },
        );
      },
       separatorBuilder: (context,index){
        return Divider();
       },
        itemCount: 20
        ),
      // Column(
      //   children: [
      //     Text(
      //       "Screenone"
      //     ),
      //     ElevatedButton(onPressed: (){
      //       Navigator.of(context).push(MaterialPageRoute(builder: (context){
      //         return Screentwo();
      //       }
      //       )
      //       );
      //       // Navigator.of(context).pushNamed('screen_2');
      //     }, 
      //     child: Text("GoTo S2")
      //     )
      //   ],
      // ),
      
    );
  }
}