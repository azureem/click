import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget btnContinue(
    String todo,
    bool isPhoneVisible
    ){
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: (isPhoneVisible)?Color(0xFF0274F1): Color(0xFF47495E),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: txtBoldAlignment(todo, 18.0, Colors.white, TextAlign.center),
    ),
  );
}