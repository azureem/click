
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/widgets/premium_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../utils/components/colors/colors.dart';
import '../../../../../../../../utils/components/txt/text_simple.dart';
import 'app_bar_items.dart';

SliverAppBar sliverAppBar(
    Color color
    ){
  return SliverAppBar(
    elevation: 0,
    surfaceTintColor: ClickColors.background,
    pinned: true,
    title: premiumAppBar(),
    backgroundColor: color,
    expandedHeight: 280.0,
    flexibleSpace: FlexibleSpaceBar(
      background: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    ClickColors.darkerBlue,
                    ClickColors.darkerBlue,
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    ClickColors.darkBlue,
                    ClickColors.darkBlue,
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ClickColors.darkerBlue,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              // Background container to ensure the premiumItem is visible
              color: Colors.transparent,
            ),
          ),
          Positioned(
            top: 56,
            left: 56,
            child: Container(
              child: premiumItem(),
            ),
          ),
          Align(

            alignment: Alignment.bottomCenter,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 38.0),
              child: txtRegular("Obuna narxi 50 000 so'm 30 kunga", 14, Colors.white),
            ),
          ),
          Align(

            alignment: Alignment.bottomCenter,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 81.0),
              child:Text(
                "Bepul o'tkazmalar, to'lovlar uchun ikki karra cashback va\n""boshqa takliflar",
                style: TextStyle(fontSize: 15.0, color: Colors.white),textAlign: TextAlign.center,
              ),
            ),
          ),

        ],
      ),
    ),
  );
}