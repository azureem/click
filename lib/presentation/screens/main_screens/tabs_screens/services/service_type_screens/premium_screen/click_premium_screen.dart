import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClickPremiumScreen extends StatefulWidget {
  const ClickPremiumScreen({super.key});

  @override
  State<ClickPremiumScreen> createState() => _ClickPremiumScreenState();
}

class _ClickPremiumScreenState extends State<ClickPremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("click preimium"),
      ),
    );
  }
}
