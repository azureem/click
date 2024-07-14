import 'package:click_uz/presentation/screens/main_screens/tabs_screens/main/main_widgets/all_see.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/main/main_widgets/containerImage.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/main/main_widgets/family_comission.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/main/main_widgets/locationItems.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/main/main_widgets/phone_pay.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/material.dart';

import 'main_widgets/container_icon.dart';
import 'main_widgets/containers.dart';
import 'main_widgets/first_continer_item.dart';
import 'main_widgets/main_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _appBarColor = Colors.transparent;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
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
      home: Scaffold(
        backgroundColor: ClickColors.background,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
          SliverAppBar(
          surfaceTintColor: ClickColors.background,
          backgroundColor: _appBarColor,
          elevation: 0,
          title: mainAppbar(),
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
            children: [
              Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ClickColors.darkerBlue,
                          ],
                        ),
                      ),
                    ),
             Positioned.fill(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ClickColors.darkerBlue,
                                ClickColors.background,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: homeFirstContainer(
            ImageAssets.cachImg,
            ImageAssets.premium,
            "Bu oyda cashback",
            "Premium",
            "Obunani ulash"),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: threeContainers(),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      const SliverToBoxAdapter(
        child: FamilyCommission(
            title1: "Oila a'zolariga",
            title2: "komissiyasiz",
            title3: "pul o'tqazing"),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: allSee("Xizmatlar", "Hammasi"),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(16.0),
      ),
      SliverToBoxAdapter(
        child: rowIconContainer1(context),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(46.0),
      ),
      SliverToBoxAdapter(
        child: rowIconContainer2(context),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child:
          txtBold("Mobil aloqa uchun to'lov", 18.0, Colors.white54),
        ),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: PhonePay(
          phone: "",
        ),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: rowImgContainer(lsImages),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: allSee("Joylarda", "Hammasi"),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: locationContainer(ImageAssets.fastfoodImg,
            "Adamari Yunusobod ayollar", "24 km"),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(16.0),
      ),
      SliverToBoxAdapter(
        child: locationContainer(
            ImageAssets.fastfoodImg, "MERIT education", "24 km"),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(24.0),
      ),
      SliverToBoxAdapter(
        child: settingHome(),
      ),
      SliverToBoxAdapter(
        child: verticalSpace(48.0),
      ),
      ],
    ),)
    ,
    );
  }
}

List<String> ls = ["45", "89"];
