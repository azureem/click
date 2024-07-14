

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar premiumAppBar(){
  return  AppBar(
    backgroundColor: Colors.transparent,
    forceMaterialTransparency: true,
    elevation: 0,
   leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 24.0,),
  );
}