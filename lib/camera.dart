import 'package:flutter/material.dart';

class Camera  extends StatelessWidget {
  const Camera ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.camera))
      ],
    );
  }
}