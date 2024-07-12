

import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget locationContainer(
    String img,
    String address,
    String km
    ) {
  return Container(
    height: 56,
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    decoration: BoxDecoration(
      color: ClickColors.containerWidgetColor,
      borderRadius: BorderRadius.circular(16.0)),
    child:Row(

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset(img, width: 32, height: 32,),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            txtBold(address, 18.0, Colors.white),
            Row(
              children: [
                Icon(Icons.directions, size: 14.0, color: Colors.white54),
                horizontalSpace(4.0),
                txtRegular(km, 16.0, Colors.white54)
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget settingHome(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.grid_view_outlined, size: 24.0, color: ClickColors.darkerBlue,),
      horizontalSpace(4.0),
      txtBold("Ekran sozlamalari", 18.0, ClickColors.darkerBlue)
    ],
  );
}