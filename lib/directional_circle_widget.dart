import 'package:flutter/material.dart';

class DirectionalCircle extends StatelessWidget {
  final IconData icon;
  final Color colour;

  const DirectionalCircle({Key key, this.colour, @required this.icon})
      : super(key: key);
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
        child: Icon(
          icon,
          color: colour != null ? colour : Colors.grey[900],
          size: 30,
        ),
      ),
    );
  }
}
