import 'package:flutter/material.dart';

class CircularButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                spreadRadius: 1,
                blurRadius: 2,
                color: Colors.black),
          ],
          gradient: LinearGradient(
              colors: [Colors.grey[600], Colors.grey[800]],
              tileMode: TileMode.clamp,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Center(
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    spreadRadius: 2,
                    blurRadius: 3,
                    color: Colors.black),
              ],
              gradient: LinearGradient(
                  colors: [Colors.grey[600], Colors.grey[800]],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
      ),
    );
  }
}
