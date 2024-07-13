import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
 final String cardNumber;
  const CardItem({super.key, required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.red
      ),
      child: txtBold(cardNumber, 18.0, Colors.white),
    );
  }
}

class CardTransparent extends StatelessWidget {
  const CardTransparent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
}

class CardAdd extends StatelessWidget {
  const CardAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          txtBold("Karta qo'shish", 24.0, Colors.white),
          verticalSpace(4.0),
          Icon(Icons.add_circle_outline_sharp, size: 24.0,color: ClickColors.darkerBlue,)
        ],
      ),
    );
  }
}


Widget cardList(List<String> ls) {
  return SizedBox(
    height: 150,
    child: ListView.builder(
      itemCount: ls.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        /*String data = ls[index];
        if (index == 0) {
          return const CardTransparent();
        } else if (index == ls.length) {
          return const CardAdd();
        } else {*/
          return  CardItem(cardNumber: ls[index]);
        }
      ,
    ),
  );
}