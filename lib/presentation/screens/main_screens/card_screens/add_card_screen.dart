import 'package:flutter/material.dart';
import '../../../../utils/components/colors/colors.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  TextEditingController cardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                )),
            const Text(
              "Uzcard/Humo kartalarini qo'shish",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Container(
              width: 50,
            )
          ],
        ),
        backgroundColor: ClickColors.appBarBackground,
      ),
      backgroundColor: ClickColors.bodyBackground,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF35353F)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Karta raqami",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), border: Border.all(color: Color(0xFF4A4A54)), color: const Color(0xFF35353F)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '0000 0000 0000 0000',
                            hintStyle: TextStyle(
                              color: Colors.white24,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: cardController,
                          style: const TextStyle(color: Colors.white),
                          maxLines: 1,
                          onChanged: (value) {},
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.document_scanner_outlined, color: Color(0xFF0274F1),size: 20,))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    "Karta amal qilish muddati",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), border: Border.all(color: Color(0xFF4A4A54)), color: const Color(0xFF35353F)),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'OO/YY',
                            hintStyle: TextStyle(
                              color: Colors.white24,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: cardController,
                          style: const TextStyle(color: Colors.white),
                          maxLines: 1,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    "Karta nomi (Shart emas)",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), border: Border.all(color: Color(0xFF4A4A54)), color: const Color(0xFF35353F)),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Masalan: Asosiy',
                            hintStyle: TextStyle(
                              color: Colors.white24,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: cardController,
                          style: const TextStyle(color: Colors.white),
                          maxLines: 1,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.info,
                  color: Color(0xFF0274F1),
                ),
                const Text(
                  "Kartani asosiyga aylantirish",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Switch(value: false, onChanged: (value) {})
              ],
            ),
          )
        ],
      ),
    ));
  }



}
