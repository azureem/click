
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconContainer(
    String img,
    String title
    ){
  return Container(
    width: 68,
   height: 68,
   child: Column(

     crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally

     children: [
       Image.asset(img, width: 28.0, height: 28.0,),
       verticalSpace(4.0),
       txtRegular(title, 13.0, Colors.white)
     ],
   ),
  );
}


Widget rowIconContainer1(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      iconContainer(ImageAssets.homeImg, "Mening uyim"),
      iconContainer(ImageAssets.autoImg, "Mening avto"),
      iconContainer(ImageAssets.charityImg, "Xayriya"),
      iconContainer(ImageAssets.fastfoodImg, "Taomlar yetkazish"),

    ],
  );
}

Widget rowIconContainer2(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      iconContainer(ImageAssets.planeImg, "Avia chiptalar"),
      iconContainer(ImageAssets.starImg, "Tanlangan to'lovlar"),
      iconContainer(ImageAssets.qrImg, "Mening QR-kodim"),
      iconContainer(ImageAssets.familyImg, "Mening oilam"),

    ],
  );
}