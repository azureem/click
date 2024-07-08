import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget btnContinue(){
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Color(0xFF47495E)
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: txtBoldAlignment('Davom ettirish', 18.0, Colors.white, TextAlign.center),
    ),
  );
}