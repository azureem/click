
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget btnLang(String name) {
  return Container(
    width: 200, // Width of the button
    height: 50, // Height of the button
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF0092FC), // Darker blue
          Color(0xFF0092FC), // Lighter blue in the center
          Color(0xFF0092FC), // Darker blue
        ],
        stops: [0.0, 0.5, 1.0],
      ),
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
