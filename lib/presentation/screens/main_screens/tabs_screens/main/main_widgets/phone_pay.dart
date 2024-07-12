import 'package:click_uz/presentation/screens/language/widgets/btn_lang.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/material.dart';

class PhonePay extends StatelessWidget {
  final String phone;

  const PhonePay({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
              child: phoneItem(phone)),
          SizedBox(width: 4.0),
          Flexible(
              child: btnPay("To'lash"))
        ],
      ),
    );
  }
}

Widget phoneItem(String phone) {
  return Container(
    height: 38,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1, color: Colors.grey)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: txtRegular("+998 95 017 00 69", 18.0, Colors.white),
        ),
        Spacer(),
        Icon(Icons.account_circle_outlined, size: 28.0, color: ClickColors.darkerBlue,),
        horizontalSpace(8.0)
      ],
    )
  );
}



Widget btnPay(String name) {
  return Container(
    width: 150, // Width of the button
    height: 50, // Height of the button
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF0092FC), // Darker blue
          Color(0xFF0092FC), // Lighter blue in the center
          Color(0xFF0092FC), // Darker blue
        ],

      ),
    ),
    child: Center(
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
