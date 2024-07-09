import 'package:click_uz/presentation/screens/auth/sign_up/register/register_widgets/register_widgets.dart';
import 'package:click_uz/presentation/screens/auth/sign_up/sign_up_widgets/btn.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBar(),
      backgroundColor: const Color(0xFF252429),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              itemTextFilled(context, "Isim"),
              verticalSpace(18),
              itemTextFilled(context, "Familiya"),
              verticalSpace(18),
              itemTextFilledPassword(context, "Password"),
              verticalSpace(18),
              itemTextFilledPassword(context, "Password"),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: btnContinue("Davom ettrish", false),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
