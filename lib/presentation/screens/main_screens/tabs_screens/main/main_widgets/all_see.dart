import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget allSee(
    String title1,
    String all
    ){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Row(
      children: [
        txtBold(title1, 18.0, Colors.white54),
         Spacer(),
        txtRegular(all, 16.0, ClickColors.darkerBlue),
        Icon(Icons.arrow_forward_ios, size: 12.0, color: ClickColors.darkerBlue,)

      ],
    ),
  );
}