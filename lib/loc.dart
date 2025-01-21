import 'package:flutter/material.dart';

class Location  extends StatelessWidget {
  const Location ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.location_history))
      ],
    );
  }
}