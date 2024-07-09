import 'package:click_uz/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:click_uz/presentation/screens/language/widgets/btn_lang.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      backgroundColor: const Color(0xFF26252B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                },
                child: btnLang("Русский")),
            verticalSpace(24.0),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                },
                child: btnLang("O'zbek")),
            verticalSpace(24.0),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                },
                child: btnLang("English")),
          ],
        ),
      ),
    ));
  }
}
