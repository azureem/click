import 'package:flutter/material.dart';
import '../../../../../../utils/components/colors/colors.dart';

class ItemCategory extends StatelessWidget {
  final String image;
  final String title;
  const ItemCategory({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ClickColors.containerWidgetColor),
      child: Row(
        children: [
          Image.network(image),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
