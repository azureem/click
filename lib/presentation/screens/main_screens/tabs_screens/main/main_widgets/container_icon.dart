
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

     children: [
       Image.asset(img, width: 28.0, height: 28.0,),
       verticalSpace(4.0),
       txtRegular(title, 13.0, Colors.white)
     ],
   ),
  );
}


Widget rowIconContainer(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      iconContainer(ImageAssets.homeImg, "Mening uyim"),
      iconContainer('assets/images/home_icon.png', "Mening avto"),
      iconContainer('assets/images/home_icon.png', "Xayriya"),
      iconContainer('assets/images/home_icon.png', "Taomlar yetqazish"),

    ],
  );
}