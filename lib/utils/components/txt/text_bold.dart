
import 'package:flutter/cupertino.dart';

Text  txtBold(
    String text,
    double size,
    Color txtColor
    ){
  return Text(text, style: TextStyle(color: txtColor, fontSize: size, fontWeight: FontWeight.bold),);

}


Text  txtBoldAlignment(
    String text,
    double size,
    Color txtColor,
    TextAlign alignment
    ){
  return Text(text,
    textAlign: alignment,
    style: TextStyle(color: txtColor, fontSize: size, fontWeight: FontWeight.bold),);

}