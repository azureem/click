
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconContainer(
    String img,
    String title,
    BuildContext context
    ){
  return Container(
    width: MediaQuery.of(context).size.width/4,
   height: 68,
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
     mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [
       Image.asset(img, width: 28.0, height: 28.0,),
       //txtRegular(title, 13.0, Colors.white)
       Text(title, style: TextStyle(color: Colors.white, fontSize: 13),maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,)
     ],
   ),
  );
}


Widget rowIconContainer1(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      iconContainer(ImageAssets.homeImg, "Mening uyim", context),
      iconContainer(ImageAssets.autoImg, "Mening avto", context),
      iconContainer(ImageAssets.charityImg, "Xayriya", context),
      iconContainer(ImageAssets.fastfoodImg, "Taomlar yetkazish", context),

    ],
  );
}

Widget rowIconContainer2(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      iconContainer(ImageAssets.planeImg, "Avia chiptalar", context),
      iconContainer(ImageAssets.starImg, "Tanlangan to'lovlar", context),
      iconContainer(ImageAssets.qrImg, "Mening QR-kodim", context),
      iconContainer(ImageAssets.familyImg, "Mening oilam", context),

    ],
  );
}