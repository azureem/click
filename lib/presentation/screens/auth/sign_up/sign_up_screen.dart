import 'package:click_uz/presentation/screens/auth/otp/otp_screen.dart';
import 'package:click_uz/presentation/screens/auth/sign_up/sign_up_widgets/app_bar.dart';
import 'package:click_uz/presentation/screens/auth/sign_up/sign_up_widgets/btn.dart';
import 'package:click_uz/presentation/screens/auth/sign_up/sign_up_widgets/phoneTextField.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26252B),
      appBar: signInAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            verticalSpace(150.0),
            txtRegular("Telefon raqamaningizi kiriting", 18.0, Colors.white),
            verticalSpace(24.0),
            phoneTextField(),
            const Spacer(),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
                },
                child: btnContinue("Davvom ettirish")),
            verticalSpace(24.0)
          ],
        ),
      ),
    );
  }
}
