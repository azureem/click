

import 'package:flutter/cupertino.dart';

Widget txtRegular(
    String text,
    double size,
    Color txtColor
    ){
  return
    Text(text, style: TextStyle(color: txtColor, fontSize: size),);

}