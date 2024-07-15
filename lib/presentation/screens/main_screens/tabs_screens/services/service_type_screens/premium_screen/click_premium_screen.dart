import 'dart:convert';

import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/widgets/app_bar_items.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/widgets/bottom_btn.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/widgets/items.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/widgets/premium_app_bar.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/widgets/sliver_app_bar.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../utils/components/colors/colors.dart';

class ClickPremiumScreen extends StatefulWidget {
  const ClickPremiumScreen({super.key});

  @override
  State<ClickPremiumScreen> createState() => _ClickPremiumScreenState();
}
class _ClickPremiumScreenState extends State<ClickPremiumScreen> {
  final ScrollController _scrollController = ScrollController();
  Color _appBarColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  void _scrollListener() {
    double targetOffset = 290.0;
    double transitionOffset = 150.0;

    if (_scrollController.offset >= targetOffset - transitionOffset) {
      if (_appBarColor != ClickColors.background) {
        setState(() {
          _appBarColor = ClickColors.background;
        });
      }
    } else {
      if (_appBarColor != Colors.transparent) {
        setState(() {
          _appBarColor = Colors.transparent;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ClickColors.background,
        body: Stack(
          children: [
            CustomScrollView(
            controller: _scrollController,
            slivers: [
              sliverAppBar(_appBarColor),
              SliverToBoxAdapter(child: verticalSpace(16.0)),
              SliverToBoxAdapter(
                child: itemsSmaller("Menda promo-kod bor",  ImageAssets.clickLogo),
              ),
              SliverToBoxAdapter(
                child: listOfBiggerOnes(),
              ),
              SliverToBoxAdapter(
                child: verticalSpace(24.0),
              ),
              SliverToBoxAdapter(
                child:Container(
                  alignment: Alignment.center,
                    child: Text("Click Premium obunasini ulatganingizda", style: TextStyle(color: Colors.white, fontSize: 18.0, height: 0),)),
              ),
              SliverToBoxAdapter(
                child:Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ommaviy offerta", style: TextStyle(color: ClickColors.darkerBlue, fontSize: 18.0, height: 0)),
                     horizontalSpace(4.0),
                    Text("shartlariga rozi bo'lmoqdasiz", style: TextStyle(color: Colors.white, fontSize: 18.0, height: 0))

                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: verticalSpace(75.0),
              )
            ],
          ),

          Positioned(
            bottom: 0,
              right: 0,
              left: 0,
              child: bottomBtn())],
        ),
      ),
    );
  }
}
