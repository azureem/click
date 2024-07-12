import 'package:click_uz/presentation/screens/bottom_navigation/bottom.dart';
import 'package:flutter/material.dart';

import '../../../../utils/components/spaces/sized_boxes.dart';

Widget numButton(int number, VoidCallback voidCallback) {
  return GestureDetector(
    onTap: voidCallback,
    child: Container(
      //padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF35353F),
        boxShadow: const [
          BoxShadow(offset: Offset(2.0, 2.0), color: Colors.black12, blurRadius: 10, spreadRadius: 1),
          BoxShadow(offset: Offset(2.0, 2.0), color: Colors.black12, blurRadius: 10, spreadRadius: 1),
        ],
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

AppBar appBar(BuildContext context){
  return AppBar(
    backgroundColor: const Color(0xFF252429),
    leading: InkWell(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.white,
      ),
    ),
    title: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            "Avtorizatsiya",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )),
  );
}

Widget itemClickPass(BuildContext context){
  return Row(
    children: [
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
        },
        child: Container(
          width: 150,
          margin: const EdgeInsets.all(10),
          child: const Text(
            "Click-Pin yoddan chiqardingizmi?",
            style: TextStyle(fontSize: 18, color: Colors.white24),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      const Spacer(),
      Container(
          margin: const EdgeInsets.only(right: 5),
          child: const Text("Click Pass",style: TextStyle(fontSize: 20,color: Color(0xFF0274F1),),)),
      const Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(Icons.ads_click, size: 36,color: Color(0xFF0274F1),),
      )
    ],
  );
}

Widget itemPin(VoidCallback numClick, VoidCallback iconClick){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const TextButton(onPressed: null, child: Icon(Icons.fingerprint, color: Colors.white,size: 45,)),
        numButton(0,numClick),
        TextButton(
            onPressed: iconClick,
            child: const Icon(
              Icons.backspace_outlined,
              color: Colors.white,
              size: 28,
            ))
      ],
    ),
  );
}

Widget itemVisibility(bool isPinVisible, VoidCallback isVisible){
  return IconButton(
      onPressed: isVisible,
      icon: isPinVisible
          ? const Icon(
        Icons.remove_red_eye_outlined,
        color: Colors.white,
      )
          : const Icon(
        Icons.visibility_off,
        color: Colors.white,
      ));
}

Widget itemNumberPin(bool isPinVisible, String enterPin){
  return Row(
    children: List.generate(5, (index) {
      return (isPinVisible)?Container(
        margin: const EdgeInsets.all(6),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: index < enterPin.length
                ? isPinVisible
                ? const Color(0xFF0274F1)
                : const Color(0xFF0274F1)
                : const Color(0xFF252429),
            border: Border.all(color: const Color(0xFF0274F1))),
      ):Container(
        margin: const EdgeInsets.all(6),
        width: 10,
        height: 10,);
    }),
  );
}

Widget itemText(){
  return const Align(
    alignment: Alignment.center,
    child: Text(
      "Click-Pin kiriting",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
    ),
  );
}

Widget itemPins(bool isPinVisible, String enterPin, BuildContext context, VoidCallback isVisible){
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        itemVisibility(isPinVisible, isVisible),
        itemNumberPin(isPinVisible, enterPin),
        horizontalSpace(50)
      ],
    ),
  );
}