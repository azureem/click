import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:flutter/material.dart';

Widget itemReport(BuildContext context) {
  return Container(
    height: 80,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ClickColors.containerWidgetColor),
    child: Row(
      children: [
        Image.asset(
          'assets/images/result_1.png',
          height: 50,
          width: 50,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3 + 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "ATTO TRANSPORT TOLOV",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )),
          ),
        ),
        Spacer(),
        Column(
          children: [
            Text("-1700 so'm", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            Text("11 iyl 10:11", style: TextStyle(color: Colors.white, fontSize: 11),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.check_circle_outlined, color: Color(0xFF0274F1),size: 30,),
        )
      ],
    ),
  );
}
