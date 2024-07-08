import 'package:click_uz/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:click_uz/presentation/screens/language/language_screen.dart';
import 'package:click_uz/presentation/screens/pin_code/pin_code_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    openHome();
  }

  openHome() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LanguageScreen()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26252B),
      body: Center(
        child: Image.asset('assets/images/logo.png', width: 150, height: 100,),
      ),
    );
  }
}
