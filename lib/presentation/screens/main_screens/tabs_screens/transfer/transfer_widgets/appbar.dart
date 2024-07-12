import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransferAppbar extends StatelessWidget {
  const TransferAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: txtBold("O'tkazmalar", 18.0, Colors.white)),
    );
  }
}
