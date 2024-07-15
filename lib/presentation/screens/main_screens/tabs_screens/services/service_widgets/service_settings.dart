import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget serviceSettings(){
  return Container(
    width: double.infinity,
    height: 44.0,
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(10.0),
      color: ClickColors.containerWidgetColor
    ),
    child: Row(
      children: [
        Expanded(
          flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: txtRegular(" Vidjetni sozlash", 14.0, Colors.white),
            )),
        Expanded(
          flex: 1,
            child: Row(
              children: [
                horizontalSpace(8.0),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color:Colors.white24),
                    shape: BoxShape.circle
                  ),child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(ImageAssets.homeImg, width: 24.0, height: 24.0,),
                  )),
                Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color:Colors.white24),
                        shape: BoxShape.circle
                    ),child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(ImageAssets.autoImg, width: 24.0, height: 24.0),
                    )),
                Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color:Colors.white24),
                        shape: BoxShape.circle
                    ),child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(ImageAssets.charityImg, width: 24.0, height: 24.0),
                    )),
                horizontalSpace(8.0),
                const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.white54,)



              ],
            ))
      ],
    ),
  );
}

class CustomDotDivider extends StatelessWidget {
  const CustomDotDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: null,
        itemBuilder: (context, index) {
          return Container(
            width: 3,
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 1),
            decoration: const BoxDecoration(
              color: Colors.white24,
            ),
          );
        },
      ),
    );
  }
}