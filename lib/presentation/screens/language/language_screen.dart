import 'package:click_uz/presentation/screens/language/widgets/btn_lang.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/cupertino.dart';
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
        backgroundColor: Color(0xFF26252B),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               btnLang("Русский"),
               verticalSpace(24.0),
               btnLang("O'zbek"),
               verticalSpace(24.0),
               btnLang("English"),
             ],
          ),
        ),
      )
    );
  }
}
