import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget containerImage(String img) {
  return Container(
      margin: EdgeInsets.all(2.0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
    child: ClipRect(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0 ),
        child: Image.network(
          img,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}

List<String> lsImages = [
  "https://click.uz/uploads/20240619/ainv2b3612a25fec07865e39d047f75c56e31718797973.jpg",
  "https://click.uz/uploads/20240614/ainv889c581d62ef776369f19320e3a3be261718364326.png",
  "https://click.uz/uploads/20240223/ainv1e91950a4e2b3c28e25a9882bc69fa651708673142.png",
  "https://click.uz/uploads/20240606/ainv6691b0baab616e9d7551046af554de661717667751.jpg",
  "https://click.uz/uploads/20211230/ainvfedbc55eab20f82ce6ac4425bfdbc4e41640859892.jpg",
  "https://click.uz/uploads/20210915/ainv945e2cebda3be36cb9184c82ae6835211631700647.jpg",
];

Widget rowImgContainer(List<String> ls) {
  return SizedBox(
    height: 120,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: ls.length,
      itemBuilder: (context, index) {
        return containerImage(ls[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 4.0);
      },
    ),
  );
}
