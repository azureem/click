import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFamScreen extends StatefulWidget {
  const MyFamScreen({super.key});

  @override
  State<MyFamScreen> createState() => _MyFamScreenState();
}

class _MyFamScreenState extends State<MyFamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
    );
  }
}
