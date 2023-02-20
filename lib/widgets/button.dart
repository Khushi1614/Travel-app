import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String? text = 'hii';
  IconData? icon;
  bool? isIcon;
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;

  Button(
      {Key? key,
      this.isIcon = false,
      this.text,
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.borderColor,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
        color: color,
      ),
      child: isIcon == false
          ? Center(
              child: Text(
              text!,
              style: TextStyle(color: backgroundColor),
            ))
          : Center(child: Icon(icon!, color: Colors.black38)),
    );
  }
}
