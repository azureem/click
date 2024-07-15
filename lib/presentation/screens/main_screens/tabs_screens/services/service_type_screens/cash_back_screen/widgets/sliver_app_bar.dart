import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/material.dart';

SliverAppBar sliverAppBarCash() {
  return SliverAppBar(
    title: cashAppbar(),
    backgroundColor: ClickColors.background,
    elevation: 0,
    pinned: true,
    expandedHeight: 200.0,
    flexibleSpace: FlexibleSpaceBar(
      background: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0), // Added top padding to avoid status bar overlap
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            verticalSpace(38),
              Row(
                children: [
                  txtRegular("Bu oyda", 18.0, Colors.white),
                  Spacer(),
                  Row(
                    children: [
                      Image.asset(ImageAssets.cachImg, width: 24.0, height: 24.0),
                      horizontalSpace(4.0),
                      txtBold("0", 24.0, Colors.blue),
                      horizontalSpace(4.0),
                      txtRegular("so'm", 14.0, Colors.blue),
                    ],
                  ),
                ],
              ),
              verticalSpace(8.0),
              Container(
                height: 62,

                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: ClickColors.containerWidgetColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(

                      padding: const EdgeInsets.only(left: 12.0),
                      child: txtRegular("O'tgan oy bo'yicha ma'lumot yo'q", 18.0, Colors.white54),
                    ),
                  ],
                ),
              ),
              verticalSpace(8.0),
              Row(
                children: [
                  txtRegular("Butun davr mobaynida", 18.0, Colors.white),
                  Spacer(),
                  Row(
                    children: [
                      txtBold("0", 24.0, Colors.white),
                      horizontalSpace(4.0),
                      txtRegular("so'm", 14.0, Colors.white),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
AppBar cashAppbar() {
  return AppBar(
    forceMaterialTransparency: false,
    elevation: 0,
    centerTitle: true,
    backgroundColor: ClickColors.background,

    title: txtBold("Katta cashback", 18.0, Colors.white),
    leading: Icon(Icons.arrow_back_ios, size: 24.0, color: Colors.white),
    toolbarHeight: kToolbarHeight, // Adjust if needed
  );
}
