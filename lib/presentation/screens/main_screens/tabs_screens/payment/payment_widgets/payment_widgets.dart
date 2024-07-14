import 'package:flutter/material.dart';
import '../../../../../../utils/components/colors/colors.dart';

class ItemCategory extends StatelessWidget {
  final String image;
  final String title;
  const ItemCategory({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ClickColors.containerWidgetColor),
      child: Row(
        children: [
          Image.network(image, height: 25,width: 25,),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}

Widget item(String title, BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width/3-15,
    height: 100,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: ClickColors.containerWidgetColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.star_border, color: Color(0xFF0274F1),size: 30,),
        const Spacer(),
        Text(title, style: const TextStyle(color: Colors.white, fontSize: 12),)
      ],
    ),
  );
}