


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../utils/components/colors/colors.dart';
import '../../../../../../../../utils/components/txt/text_bold.dart';

Container bottomBtn(){
  return Container(
    color: ClickColors.background,
    height: 62.0,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12, bottom: 12.0),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: ClickColors.darkerBlue
        ),
        child: Center(child: txtBold("30 kunga 50 000 so'mga", 18.0, Colors.white)),
      ),
    ),
  );
}