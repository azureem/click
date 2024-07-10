


import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget homeFirstContainer(
    String img1,
    String img2,
    String txt1,
    String txt2,
    String sum
    ){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12.0),
    width: double.infinity,
    height: 72,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: ClickColors.containerWidgetColor
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               children: [
                 Image.asset(img1, width: 36, height: 36,),
                 horizontalSpace(4.0),
                 txtBold("0 ", 16.0, ClickColors.darkBlue),
                 txtBold("so'm", 18.0, ClickColors.darkBlue)
               ],
             ),
              verticalSpace(4.0),
              txtRegular(txt1, 16.0, Colors.white)

            ],
          ),
        ),
        Container(height: 56, width: 1, color: Colors.grey,),
        Padding(
          padding: const EdgeInsets.only(right: 36.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(img1, width: 36, height: 36,),
                  horizontalSpace(4.0),
                  txtBold(txt2, 16.0, Colors.yellow)
                ],
              ),
              verticalSpace(4.0),
              txtRegular(sum, 16.0, Colors.white)

            ],
          ),
        ),
      ],
    ),
  );
}