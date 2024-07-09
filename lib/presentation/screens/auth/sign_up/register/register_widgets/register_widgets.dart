import 'package:flutter/material.dart';

import '../../../../../../utils/components/txt/text_bold.dart';

AppBar appBar(){
  return AppBar(
    backgroundColor: const Color(0xFF252429),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_back_ios),),
        Center(
          child:
          txtBoldAlignment("Ro'yxatdan o'tish",
              18.0, Colors.white,
              TextAlign.center),
        ),
        IconButton(
            onPressed: (){},
            icon: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: const Color(0xFF0274F1))),
              padding: const EdgeInsets.all(2),
              child: const Icon(
                Icons.question_mark_outlined,
                color: Color(0xFF0274F1),
              ),
            ))
      ],
    ),
    automaticallyImplyLeading: false,
  );
}

Widget itemText(String text){
  return Align(alignment:Alignment.topLeft,child: Text(text, style: TextStyle(fontSize: 14, color: Colors.white),));
}
Widget itemTextFilled(BuildContext context,String text){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black12),
        color: const Color(0xFF1F1F23)
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none, hintText: text, hintStyle: const TextStyle(color: Colors.white24,),),
            keyboardType: TextInputType.name,
            style: const TextStyle(color: Colors.white),
            maxLines: 1,
          ),
        ),
      ],
    ),
  );
}

Widget itemTextFilledPassword(BuildContext context,String text){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black12),
        color: const Color(0xFF1F1F23)
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none, hintText: text, hintStyle: const TextStyle(color: Colors.white24,),),
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(color: Colors.white),
            maxLines: 1,
          ),
        ),
      ],
    ),
  );
}