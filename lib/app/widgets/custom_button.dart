import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final Color? color;
  final Color? textColor;
  final String title;
  final double? fontSize;
  const CustomButton(
      {super.key,
      required this.onTap,
      this.color,
      this.textColor,
      required this.title,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 50,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: fontSize ?? 14,
            ),
          ),
        ),
      ),
    );
  }
}
