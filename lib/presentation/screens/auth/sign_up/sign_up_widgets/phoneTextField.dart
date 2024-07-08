import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final numberController = TextEditingController();
final phoneMaskFormatter = MaskTextInputFormatter(
    mask: '+998(##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

Widget phoneTextField() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey, width: 1.0)),
    child: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: TextField(
        style: TextStyle(fontSize: 20, color: Colors.grey),
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(16.0),

            )),
        controller: numberController,
        inputFormatters: [phoneMaskFormatter],


      ),
    ),
  );
}
