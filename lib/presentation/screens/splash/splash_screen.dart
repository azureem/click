import 'package:click_uz/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:click_uz/presentation/screens/language/language_screen.dart';
import 'package:click_uz/presentation/screens/pin_code/pin_code_screen.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
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
      backgroundColor: ClickColors.background,
      body: Center(
        child: Image.asset(ImageAssets.clickLogo, width: 250, height: 200,),
      ),
    );
  }
}
