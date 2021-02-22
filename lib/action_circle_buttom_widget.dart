import 'package:flutter/material.dart';

class ActionCircleButtom extends StatelessWidget {
  final String buttom;

  const ActionCircleButtom({Key key, @required this.buttom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [Colors.grey[600], Colors.grey[800]],
              tileMode: TileMode.clamp,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Center(
        child: Text(
          buttom,
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
