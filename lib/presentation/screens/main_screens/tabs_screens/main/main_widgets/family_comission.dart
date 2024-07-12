

import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FamilyCommission extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  const FamilyCommission({super.key, required this.title1, required this.title2, required this.title3});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,

      width: double.infinity,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: ClickColors.darkBlue,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [



                Positioned(
                  top: 0,
                  right: 0,
                  child:Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: ClickColors.lightBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  child:Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: ClickColors.lightBlue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 2,
                  child: Image.asset(ImageAssets.girl, width: 85, height: 85,),
                ),
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Image.asset(ImageAssets.boy,  width: 100, height: 100),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add widgets here for the second column
                Text(title1, style: TextStyle(color: Colors.white, fontSize: 24.0, height: 0, fontWeight: FontWeight.bold),),
                Text(title2, style: TextStyle(color: Colors.white, fontSize: 24.0, height: 0, fontWeight: FontWeight.bold),),
                Text(title3, style: TextStyle(color: Colors.white, fontSize: 24.0, height: 0, fontWeight: FontWeight.bold),),


                // Other widgets
              ],
            ),
          ),
        ],
      ),
    );
  }
}
