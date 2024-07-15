import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySizeBox {

 static SizedBox verticalSpace(
      double height
      ){
    return SizedBox(
      height: height,
    );
  }

  static SizedBox horizontalSpace(
      double width
      ){
    return SizedBox(
      width: width,
    );
  }
}




SizedBox verticalSpace(
    double height
    ){
  return SizedBox(
    height: height,
  );
}

SizedBox horizontalSpace(
    double width
    ){
  return SizedBox(
    width: width,
  );
}