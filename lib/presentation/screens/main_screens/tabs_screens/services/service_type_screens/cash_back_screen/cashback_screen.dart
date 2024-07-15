import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/cash_back_screen/widgets/sliver_app_bar.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CashbackScreen extends StatefulWidget {
  const CashbackScreen({super.key});

  @override
  State<CashbackScreen> createState() => _CashbackScreenState();
}

class _CashbackScreenState extends State<CashbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClickColors.background,
      body: CustomScrollView(
        slivers: [
         sliverAppBarCash(),
          SliverToBoxAdapter(
            child: verticalSpace(5000),
          )
        ],
      ),
    );
  }
}
