

import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar mainAppbar(){
  return AppBar(
    forceMaterialTransparency: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading:Icon(Icons.menu_outlined, size: 24.0, color: Colors.white,) ,
    actions: [
      SizedBox(width: 16,),
      Icon(Icons.search, size: 24.0, color: Colors.white,),
    ],
  );
}