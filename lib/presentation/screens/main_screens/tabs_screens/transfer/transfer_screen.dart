import 'package:click_uz/presentation/screens/main_screens/tabs_screens/transfer/transfer_widgets/scanner_card.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/transfer/transfer_widgets/transfer_cards.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClickColors.background,
      appBar: AppBar(
        backgroundColor: ClickColors.background,
        title: Center(
          child: txtBold("O'tkazmalar", 20.0, Colors.white),
        ),
      ),
      body: Column(
        children: [
          ScannerCard(controller: controller),
          verticalSpace(24.0),
          Padding(
          padding: const EdgeInsets.only(left: 16.0),
            child: listOfTransferCards(),
          ),
          verticalSpace(56.0),
          mainTextTransfer()
        ],
      ),
    );
  }
}
