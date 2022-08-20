import 'package:flutter/material.dart';


Widget textWidget(String str, TextStyle style){
  return Row(
    children: [
      Text(
        str,
        style: style,
      )
    ],
  );
}

const TextStyle titleStyle= TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25);
const TextStyle nicknameStyle= TextStyle(
    fontWeight: FontWeight.normal,
    color: Colors.grey,
    fontSize: 12);
const TextStyle contentStyle= TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 15);
