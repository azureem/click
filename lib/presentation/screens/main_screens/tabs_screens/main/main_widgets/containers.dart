
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



Row threeContainers(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      itemCenterContainer(ImageAssets.homeImg, "Click Pass"),
      itemCenterContainer(ImageAssets.autoImg, "Click Pass"),
      itemCenterContainer(ImageAssets.charityImg, "Click Pass"),
      // itemCenterContainer(ImageAssets.fastfoodImg, "Click Pass"),
    ],
  );
}




Widget itemCenterContainer(
    String img, 
    String title
    ){
  return Container(
    height: 116.0,
    width: 116.0,
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: ClickColors.containerWidgetColor
    ),
    child: Center(
      child: Column(
        children: [
          SvgPicture.asset(img, width: 68, height: 68,),
          verticalSpace(4.0),
          txtRegular(title, 16.0, Colors.white)
        ],
      ),
    ),
  );
}


