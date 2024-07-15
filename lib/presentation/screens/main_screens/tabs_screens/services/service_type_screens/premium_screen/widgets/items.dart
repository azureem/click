import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../utils/components/image_paths/image_assets.dart';

Widget itemsBigger(String title, String description, String img) {
  return Container(
    height: 86,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: ClickColors.containerWidgetColor,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Center vertically
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.black45,
            ),
            child: Center(
              child: Image.asset(img, width: 42, height: 42),
            ),
          ),
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top:4.0, bottom: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    txtBold(title, 18.0, Colors.white),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: ClickColors.darkerBlue,
                      size: 18.0,
                    ),
                    horizontalSpace(16.0)
                  ],
                ),
                SizedBox(height: 4.0),
                Text(description, style: TextStyle(color: Colors.white54, fontSize: 16.0, height: 0),),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget itemsSmaller(String title, String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: ClickColors.containerWidgetColor),
      child: Row(

        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black45),
                  child: Image.asset(img, width: 42, height: 42),
                ),
              )),
          Expanded(
            flex: 5,
            child: txtBold(title, 18.0, Colors.white),
          ),
          Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 18.0,
                color: ClickColors.darkerBlue,
              ))
        ],
      ),
    ),
  );
}

Widget listOfBiggerOnes() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    child: ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: lsPremiumItem.length,
      itemBuilder: (context, index) {
        return itemsBigger(lsPremiumItem[index].title,
            lsPremiumItem[index].description, lsPremiumItem[index].img);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8.0,
        );
      },
    ),
  );
}

List<DataPremiumItem> lsPremiumItem = [
  DataPremiumItem(
      title: "Bepul o'tkazmalar",
      description:
          "Uzcard va Humo kartalari orasida oyiga 10 mln\n" "so'mgacha",
      img: ImageAssets.market),
  DataPremiumItem(
      title: "5%gacha cashback telefon\n""uchun",
      description:
          "Mobil operatorlarda balans to'ldirishda yanada\n" "ko'proq foyda",
      img: ImageAssets.market),
  DataPremiumItem(
      title: "Ikki karra cashback",
      description: "Do'kon, kafe va restoranlarda to'lovlar uchun",
      img: ImageAssets.market),
  DataPremiumItem(
      title: "Yiriklashtirilgan cashback",
      description: "Kommunal to'lovlar uchun",
      img: ImageAssets.market),
  DataPremiumItem(
      title: "Premium qo'llab quvvatlash",
      description:
          "Tajribali xodimlar har qanday vaziyatda tezda\n" "yordam beradi",
      img: ImageAssets.market),
  DataPremiumItem(
      title: "Kartalar bo'yicha tarix",
      description: "Uzcard kartalaringiz bo'yicha barcha\n"
          "amaliyotlarni bepul ko'rsatamiz",
      img: ImageAssets.market),
  DataPremiumItem(
      title: "Bepul o'tkazmalar",
      description:
          "Uzcard va Humo kartalari orasida oyiga 10 mln\n" "so'mgacha",
      img: ImageAssets.market),
  DataPremiumItem(
      title: "Oltinmavzu",
      description: "Faqat premium foydalanuvchilarda ilovaning\n"
          "bosh ekrani oltin rangda bezalgan. Ajralib turing",
      img: ImageAssets.market),
];

class DataPremiumItem {
  final String title;
  final String description;
  final String img;

  DataPremiumItem(
      {required this.title, required this.description, required this.img});
}
