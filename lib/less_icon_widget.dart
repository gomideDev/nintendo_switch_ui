import 'package:flutter/material.dart';

class LessIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          gradient: LinearGradient(
              colors: [Colors.grey[600], Colors.grey[800]],
              tileMode: TileMode.clamp,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    );
  }
}
