import 'package:flutter/material.dart';
import 'package:inc/facebook.dart';


class Mysocialmedia  extends StatelessWidget {
  const Mysocialmedia ({super.key});

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(length: 6, child: 
     Scaffold(
      appBar: AppBar(
       title:const Text("Facebook",style: TextStyle(color: Color.fromARGB(251, 0, 58, 248),fontSize: 40,fontWeight: FontWeight.bold),),
       actions:[ IconButton(onPressed: (){},
        icon:const Icon(Icons.search)),
        const SizedBox(width: 20,),
        IconButton(onPressed: (){}, 
        icon: const Icon(Icons.messenger))
        ],
        
       bottom:const TabBar(tabs: [ 
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.group)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.flag)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.menu))
            ],),
      ),
      body:const TabBarView(children:[
        Myhome(),
        Icon(Icons.group),
        Icon(Icons.ondemand_video),
        Icon(Icons.flag),
        Icon(Icons.notifications),
        Icon(Icons.menu),

       ]
       ),
     )
    );
    
  }
}