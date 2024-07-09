import 'package:click_uz/presentation/screens/auth/otp/otp_widgets/otp_widgets.dart';
import 'package:click_uz/presentation/screens/pin_code/pin_code_screen.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/material.dart';

import '../sign_up/sign_up_widgets/btn.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController editingController=TextEditingController();
    return SafeArea(
        child: Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          verticalSpace(100),
          itemTextSMS(context),
          itemTextFilled(context, editingController),
          const Spacer(),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PinCodeScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: btnContinue("Davom ettirish"),
              )),
          verticalSpace(24.0)
        ],
      ),
      backgroundColor: const Color(0xFF252429),
    ));
  }
}
