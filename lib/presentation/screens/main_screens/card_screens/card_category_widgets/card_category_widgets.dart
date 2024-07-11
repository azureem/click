import 'package:flutter/material.dart';

class CardCategoryWidgets extends StatelessWidget {
  final String name;
  final String image;
  const CardCategoryWidgets({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF33333F)
      ),
      child: Row(
        children: [
          Image.asset(image, width: 30, height: 30,),
          const SizedBox(width: 15,),
          Text(name, style: const TextStyle(color: Colors.white, fontSize: 16),)
        ],
      ),
    );
  }
}
