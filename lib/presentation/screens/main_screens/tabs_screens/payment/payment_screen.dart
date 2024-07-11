import 'dart:math' as math;

import 'package:click_uz/presentation/screens/main_screens/tabs_screens/payment/payment_widgets/payment_widgets.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController cardController = TextEditingController();
  bool isNotValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "To'lov",
          style: TextStyle(color: Colors.white, fontSize: 16),
        )),
        backgroundColor: ClickColors.appBarBackground,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), border: Border.all(color: Color(0xFF4A4A54)), color: const Color(0xFF35353F)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.rotate(
                          angle: math.pi / 2,
                          child: Icon(
                            Icons.search,
                            color: Colors.white24,
                          )),
                      Expanded(
                        child: TextField(
                          cursorColor: Color(0xFF0274F1),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.white24,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: cardController,
                          style: const TextStyle(color: Colors.white),
                          maxLines: 1,
                          onChanged: (value) {
                            setState(() {
                              print("$value");
                              if (value != '') {
                                isNotValue = true;
                              } else {
                                isNotValue = false;
                              }
                            });
                          },
                        ),
                      ),
                      (isNotValue)
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  cardController.clear();
                                  isNotValue = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white24),
                                child: Icon(
                                  Icons.close,
                                  size: 18,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.document_scanner_outlined,
                      color: Color(0xFF0274F1),
                      size: 30,
                    ))
              ],
            ),
            Column(
              children: [
                Row(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ItemCategory(image: items[index]['icon']!, title: items[index]['title']!);
                  },
                  itemCount: items.length,
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: ClickColors.bodyBackground,
    );
  }
}

const items = [
  {'title': 'Mobil operatorlar', 'icon': "https://cdn.click.uz/app/evo_new/categories/1_v2.png"},
  {'title': 'Davlat xizmatlari va DYHXX (GAI)', 'icon': "https://cdn.click.uz/app/evo_new/categories/13_v2.png"},
  {'title': 'Kommunal to\'lovlar', 'icon':"https://cdn.click.uz/app/evo_new/categories/8_v2.png"},
  {'title': 'Kredit so\'ndirish', 'icon': "https://cdn.click.uz/app/evo_new/categories/12_v2.png"},
  {'title': 'Internet-provayderlar', 'icon': "https://cdn.click.uz/app/evo_new/categories/2_v2.png"},
  {'title': 'Soliqlar', 'icon': "https://cdn.click.uz/app/evo_new/categories/10_v2.png"},
  {'title': 'Internet-xizmatlar', 'icon': "https://cdn.click.uz/app/evo_new/categories/6_v2.png"},
  {'title': 'Telvidenie', 'icon': "https://cdn.click.uz/app/evo_new/categories/3_v2.png"},
  {'title': 'Xosting va domenlar', 'icon': "https://cdn.click.uz/app/evo_new/categories/5_v2.png"},
  {'title': 'Telefoniya', 'icon': "https://cdn.click.uz/app/evo_new/categories/7_v2.png"},
  {'title': "Ko'ngil ochar va dam olish", 'icon': "https://cdn.click.uz/app/evo_new/categories/14_v2.png"},
  {'title': "Sug'urta", 'icon': "https://cdn.click.uz/app/evo_new/categories/15_v2.png"},
  {'title': "Xayriya", 'icon': "https://cdn.click.uz/app/evo_new/categories/18_v2.png"},
  {'title': "Ta'lim", 'icon': "https://cdn.click.uz/app/evo_new/categories/21_v2.png"},
  {'title': "Sog'liq", 'icon': "https://cdn.click.uz/app/evo_new/categories/23_v2.png"},
  {'title': "Transport va avtoturargoh", 'icon': "https://cdn.click.uz/app/evo_new/categories/19_v2.png"},
  {'title': "Taksi", 'icon': "https://cdn.click.uz/app/evo_new/categories/9_v2.png"},
  {'title': "Hisob raqamiga to'lov", 'icon': "https://cdn.click.uz/app/evo_new/categories/24_v2.png"},
  {'title': "Internet-to'plamlar", 'icon': "https://cdn.click.uz/app/evo_new/categories/11_v2.png"},
];