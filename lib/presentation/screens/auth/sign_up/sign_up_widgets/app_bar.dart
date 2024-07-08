
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/material.dart';

AppBar signInAppBar(){
  return AppBar(
    backgroundColor: Color(0xFF26252B),
    title: Row(
      children: [
        Center(
          child:
          txtBoldAlignment("Avtorizatsiya",
              18.0, Colors.white,
              TextAlign.center),
        ),
      ],
    ),
    actions: [
      IconButton(
          onPressed: (){},
          icon: Icon(Icons.question_mark_outlined))
    ],
  );
}