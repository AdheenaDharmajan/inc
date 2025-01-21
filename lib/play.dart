import 'package:flutter/material.dart';

class Platbutton extends StatelessWidget {
  const Platbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.play_circle))
      ],
    );
  }
}