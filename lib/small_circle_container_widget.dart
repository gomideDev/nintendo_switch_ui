import 'package:flutter/material.dart';

class SmallCircleContainer extends StatelessWidget {
  final bool isChecked;

  const SmallCircleContainer({Key key, this.isChecked = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isChecked ? Colors.white : Colors.black),
    );
  }
}
