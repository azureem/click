

import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar mainAppbar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Row(
      children: [
        //horizontalSpace(8.0),
        Icon(Icons.menu_outlined, size: 24.0, color: Colors.white,),
        Spacer(),
        Icon(Icons.search, size: 24.0, color: Colors.white,),



      //  horizontalSpace(8.0)
      ],
    ),
  );
}