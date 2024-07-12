import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../utils/components/colors/colors.dart';

class ScannerCard extends StatelessWidget {
  final TextEditingController controller;

  const ScannerCard({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 1.0, color: Colors.white12),
        color: Color(0xFF2A2A32),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
            hintText: "Karta, hamyon, telefon raqamini kiriting",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            suffixIcon: Icon(
              Icons.document_scanner_outlined,
              color: ClickColors.darkerBlue,
            )),
          style: TextStyle(color: Colors.white, fontSize: 16.0),
          textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}

Widget mainTextTransfer(){
  return Column(
    children: [
      txtRegular("Mablag'larni imkoniyat pullaringiz", 18.0, Colors.white54),
      txtRegular("xavfsizligi uchun cheklangan", 18.0, Colors.white54),
      txtRegular("Cheklovlarni 'Xavfsizlik' menyusida olib tashlang ", 18.0, Colors.white54),
    ],
  );
}