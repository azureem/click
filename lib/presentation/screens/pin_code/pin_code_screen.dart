import 'package:click_uz/presentation/screens/pin_code/pin_code_widgets/pin_code_widgets.dart';
import 'package:flutter/material.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({super.key});

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  bool isPinVisible = true;
  String enterPin = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          itemText(),
          itemPins(isPinVisible, enterPin,context, (){
            setState(() {
              isPinVisible = !isPinVisible;
            });
          }),
          for (var i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) => numButton(1 + 3 * i + index,(){
                  setState(() {
                    if (enterPin.length < 5) {
                      enterPin += (1 + 3 * i + index).toString();
                    }
                  });
                })).toList(),
              ),
            ),
          itemPin(() {
            setState(() {
              if (enterPin.length < 4) {
                enterPin += (0).toString();
              }
            });
          }, () {
            setState(() {
              if (enterPin.isNotEmpty) {
                enterPin = enterPin.substring(0, enterPin.length - 1);
              }
            });
          }),
          itemClickPass(context)
        ],
      ),
      backgroundColor: const Color(0xFF252429),
    ));
  }
}
