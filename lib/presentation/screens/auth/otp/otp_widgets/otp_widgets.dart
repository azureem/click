import 'package:flutter/material.dart';

AppBar appBar(){
  return AppBar(
    backgroundColor: const Color(0xFF252429),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        const Text(
          "Avtorizatsiya",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Color(0xFF0274F1))),
          child: Icon(
            Icons.question_mark_outlined,
            color: Color(0xFF0274F1),
          ),
          padding: EdgeInsets.all(3),
        )
      ],
    ),
    automaticallyImplyLeading: false,
  );
}

Widget itemTextSMS(BuildContext context){
  return SizedBox(
    width: MediaQuery.of(context).size.width * 4 / 5,
    child: const Text(
      "Sms kod +998908410725 raqamga yuborildi",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, color: Colors.white),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
  );
}

Widget itemTextFilled(BuildContext context,TextEditingController editingController){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 60,
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black12),
        color: Color(0xFF1F1F23)
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(
              border: InputBorder.none, hintText: "SMS orqali kelgan kodni kiriting", hintStyle: TextStyle(color: Colors.white24,),),
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white),
            maxLines: 1,
            controller: editingController,
          ),
        ),
        const Text(
          "00:60",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    ),
  );
}