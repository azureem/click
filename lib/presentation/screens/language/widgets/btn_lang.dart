
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget btnLang(String name ) {
  return Container(
    width: 200, // Width of the button
    height: 50, // Height of the button
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF0092FC),
          Color(0xFF00B3FD),
          Color(0xFF0092FC),
        ],
        stops: [0.0, 0.5, 1.0],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Center(
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
