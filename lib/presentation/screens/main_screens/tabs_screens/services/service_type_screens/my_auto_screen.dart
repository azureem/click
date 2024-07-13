import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAutoScreen extends StatefulWidget {
  const MyAutoScreen({super.key});

  @override
  State<MyAutoScreen> createState() => _MyAutoScreenState();
}

class _MyAutoScreenState extends State<MyAutoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
    );
  }
}
