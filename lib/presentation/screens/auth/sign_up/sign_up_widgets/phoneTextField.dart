import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final numberController = TextEditingController();
final phoneMaskFormatter = MaskTextInputFormatter(mask: '(##) ###-##-##', filter: {"#": RegExp(r'[0-9]')}, type: MaskAutoCompletionType.lazy);

Widget phoneTextField(void Function(String value) voidCallback) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(15.0), border: Border.all(color: Colors.white12, width: 1.0), color: Color(0xFF1F1F23)),
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "+998 ",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        Expanded(
          child: TextField(
            style: const TextStyle(fontSize: 20, color: Colors.grey),
            decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(16.0),
                )),
            controller: numberController,
            inputFormatters: [phoneMaskFormatter],
            keyboardType: TextInputType.phone,
            onChanged: (value) => voidCallback(value),
          ),
        ),
      ],
    ),
  );
}
