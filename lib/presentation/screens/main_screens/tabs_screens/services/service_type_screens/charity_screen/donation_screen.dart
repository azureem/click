import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/material.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClickColors.background,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            child: Image.asset(
              ImageAssets.donation,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  txtBold("Xush kelibsiz!", 28.0, Colors.white),
                  verticalSpace(12.0),
                  txtRegular(txt1, 18.0, Colors.white70),
                  verticalSpace(12.0),
                  txtRegular(txt2, 18.0, Colors.white70),
                  verticalSpace(12.0),
                  txtRegular(txt3, 18.0, Colors.white70),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              height: 42,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: ClickColors.darkerBlue),
              child: txtBold("Davom ettirish", 18.0, Colors.white),
            ),
          ),
          verticalSpace(8.0)
        ],
      ),
    );
  }
}

String txt1 = "Bu click tomonidan yaratilgan xayriya fondlariga\n"
    "yordam berish yagona platformasi";
String txt2 = "Mazkur bo'limda aniq manzilli xayriyani amalga\n"
    "oshirish mumkin: kimga yordam kerakligini, qaysi\n"
    "fond pul to'playotganini va qancha pul to'plaganini\n"
    "ko'rsa bo'ladi";
String txt3 = "Biz nafaqat fondlarni, balki qalblarni birlashtiramiz";
