import 'package:click_uz/presentation/screens/main_screens/card_screens/card_category_widgets/card_category_widgets.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:flutter/material.dart';

class CardCategoryScreen extends StatefulWidget {
  const CardCategoryScreen({super.key});

  @override
  State<CardCategoryScreen> createState() => _CardCategoryScreenState();
}

class _CardCategoryScreenState extends State<CardCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                )),
            const Text(
              "Karta qo'shish",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Container(
              width: 50,
            )
          ],
        ),
        backgroundColor: ClickColors.appBarBackground,
      ),
      body:  const Column(
        children: [
          SizedBox(height: 15),
          CardCategoryWidgets(
            name: "So'm karta Uzcard/Humo",
            image: 'assets/images/result_1.png',
          ),
          SizedBox(height: 15),
          CardCategoryWidgets(
            name: "So'm karta Uzcard/Humo",
            image: 'assets/images/result_1.png',
          ),
          SizedBox(height: 15),
          CardCategoryWidgets(
            name: "So'm karta Uzcard/Humo",
            image: 'assets/images/result_1.png',
          ),
        ],
      ),
      backgroundColor: ClickColors.bodyBackground,
    ));
  }
}
