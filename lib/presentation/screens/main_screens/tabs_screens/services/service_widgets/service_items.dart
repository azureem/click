import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/EnumItem.dart';
import 'package:click_uz/utils/components/image_paths/image_assets.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:flutter/material.dart';

Widget cardItems(String title, String img) {
  return Container(
    width: 86,
    height: 90,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          img,
          width: 32,
          height: 32,
        ),
        verticalSpace(10.0),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 15.0, height: 0),
          textAlign: TextAlign.center,
          overflow: TextOverflow.visible,
        )
      ],
    ),
  );
}

Widget rowOfServiceItems(
    List<ServiceItemModel> ls, Function(ServiceType type) tapped) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      InkWell(
          onTap: () {
            // todo bloc.addEvent(ClickServiceItem(type: Enum))
            tapped(ls[0].type);
          },
          child: cardItems(ls[0].title, ls[0].img)),
      InkWell(
          onTap: () {
            tapped(ls[1].type);
          },
          child: cardItems(ls[1].title, ls[1].img)),
      InkWell(
          onTap: () {
            tapped(ls[2].type);
          },
          child: cardItems(ls[2].title, ls[2].img)),
      InkWell(
          onTap: () {
            tapped(ls[3].type);
          },
          child: cardItems(ls[3].title, ls[3].img)),
    ],
  );
}



Widget rowOfServiceItems2(
    List<ServiceItemModel> ls, Function(ServiceType type) tapped) {
  return Row(
    children: [
      GestureDetector(
          onTap: () {
            // todo bloc.addEvent(ClickServiceItem(type: Enum))
            tapped(ls[0].type);
          },
          child: cardItems(ls[0].title, ls[0].img)),
      GestureDetector(
          onTap: () {
            tapped(ls[1].type);
          },
          child: cardItems(ls[1].title, ls[1].img)),
    ],
  );
}


Widget rowOfServiceItems1(
    List<ServiceItemModel> ls, Function(ServiceType type) tapped) {
  return Row(
    children: [
      InkWell(
          onTap: () {
            tapped(ls[0].type);
          },
          child: cardItems(ls[0].title, ls[0].img)),
    ],
  );
}



class ServiceItemModel {
  final String title;
  final String img;
  final ServiceType type;

  ServiceItemModel(
      {required this.title, required this.img, required this.type});
}


