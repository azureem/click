import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF252429),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
            Text(
              "Avtorizatsiya",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Color(0xFF0274F1))),
              child: Icon(
                Icons.question_mark_outlined,
                color: Color(0xFF0274F1),
              ),
              padding: EdgeInsets.all(8),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 100),
          SizedBox(
            width: MediaQuery.of(context).size.width*4/5,
            child: const Text(
              "Sms kod +998908410725 raqamga yuborildi",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "SMS orqali kelgan kodni kiriting", hintStyle: TextStyle(color: Colors.white24)),
                    keyboardType: TextInputType.number,
                    maxLines: 1,
                  ),
                ),
                Text("00:60", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
              ],
            ),
          ),
          Spacer(),
        ],
      ),
      backgroundColor: const Color(0xFF252429),
    ));
  }
}
