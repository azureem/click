import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget transferItems(String title,
    String img) {
  return Container(
    width: 86,
    height: 86,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: ClickColors.containerWidgetColor
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Image.asset(ImageAssets.autoImg, width: 38, height: 38),
        Text(title, style: TextStyle(color: Colors.white, fontSize: 13.0, height: 0),
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,)
      ],
    ),
  );
}

Widget listOfTransferCards() {
  return SizedBox(
    height: 86,
    child: ListView.separated(

      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        dataTransferCard data = ls[index];
        return transferItems(data.title, data.img);
      }, separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(width: 12.0,);
    },
    ),
  );

}

class dataTransferCard {
  final String title;
  final String img;

  dataTransferCard({required this.title, required this.img});
}

List<dataTransferCard> ls = [
  dataTransferCard(title: "Kartalarim orasida", img: ImageAssets.clickLogo),
  dataTransferCard(title: "Kartalarim orasida", img: ImageAssets.clickLogo),
  dataTransferCard(title: "Kartalarim orasida", img: ImageAssets.clickLogo),
  dataTransferCard(title: "Kartalarim orasida", img: ImageAssets.clickLogo)
];