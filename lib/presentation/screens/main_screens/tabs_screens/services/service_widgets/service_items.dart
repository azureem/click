import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/EnumItem.dart';
import 'package:flutter/material.dart';

import '../data/sevices_item_model.dart';

class ServiceItems extends StatelessWidget {
  final VoidCallback clickItem;
  final double width;
  final ServiceItemModel data;
  const ServiceItems({super.key, required this.width, required this.data, required this.clickItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickItem,
      child: SizedBox(
        width: width,
        height: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Image.asset(
                  data.img,
                  width: 32,
                  height: 32,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                data.title,
                style: const TextStyle(color: Colors.white, fontSize: 12.0),
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
              ),
            )
          ],
        ),
      ),
    );
  }
}

