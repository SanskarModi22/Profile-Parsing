import 'package:flutter/material.dart';

Widget CustomText(
    {String? text,
    Color? color = Colors.white,
    double? fontSize,
    FontWeight? fontWeight}) {
  return Text(
    '$text',
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
