import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/material.dart';

AppBar signInAppBar(){
  return AppBar(
    backgroundColor: const Color(0xFF26252B),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_back_ios),),
        Center(
          child:
          txtBoldAlignment("Avtorizatsiya",
              18.0, Colors.white,
              TextAlign.center),
        ),
        IconButton(
            onPressed: (){},
            icon: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: const Color(0xFF0274F1))),
              padding: const EdgeInsets.all(2),
              child: const Icon(
                Icons.question_mark_outlined,
                color: Color(0xFF0274F1),
              ),
            ))
      ],
    ),
    automaticallyImplyLeading: false,
  );
}