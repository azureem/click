


import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row premiumItem() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        ImageAssets.premium,
        width: 98,
        height: 98,
        //fit: BoxFit.cover,
      ),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Click", style: TextStyle(color: Colors.white, fontSize: 42, height: 0),),
          Text("Premium", style: TextStyle(color: Colors.orange, fontSize: 48, height: 0, fontWeight: FontWeight.bold),),

        ],
      ),
    ],
  );
}
