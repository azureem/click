import 'dart:math' as math;

import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:flutter/material.dart';

class MobileOperatorScreen extends StatefulWidget {
  const MobileOperatorScreen({super.key});

  @override
  State<MobileOperatorScreen> createState() => _MobileOperatorScreenState();
}

class _MobileOperatorScreenState extends State<MobileOperatorScreen> {
  TextEditingController cardController = TextEditingController();
  bool isNotValue = false;
  TextEditingController textEditingController=TextEditingController();

  @override
  void initState() {
    textEditingController.text='+998 (90) 841 07 25';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20,
        ),
        title: Center(
            child: Text(
          "Mobile operatorlar",
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          SizedBox(
            width: 50,
          )
        ],
        backgroundColor: ClickColors.appBarBackground,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 100,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), border: Border.all(color: const Color(0xFF4A4A54)), color: const Color(0xFF35353F)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.rotate(
                        angle: math.pi / 2,
                        child: const Icon(
                          Icons.search,
                          color: Colors.white24,
                        )),
                    Expanded(
                      child: TextField(
                        cursorColor: const Color(0xFF0274F1),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.white24,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        controller: cardController,
                        style: const TextStyle(color: Colors.white),
                        maxLines: 1,
                        onChanged: (value) {
                          setState(() {
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
                              child: const Icon(
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
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.only(top: 15),
                    height: 45,
                    width: MediaQuery.of(context).size.width / 3 * 2 - 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: ClickColors.containerWidgetColor, border: Border.all(color: Colors.white12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            cursorColor: ClickColors.darkBlue,
                            controller: textEditingController,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            keyboardType: TextInputType.phone,
                          ),
                        )),
                        Container(
                            decoration: BoxDecoration(border: Border.all(color: Color(0xFF1245A3)), borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.person,
                              color: Color(0xFF1245A3),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    height: 45,
                    margin: EdgeInsets.only(left: 10, top: 15),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ClickColors.darkerBlue),
                    child: Center(
                      child: Text(
                        "To'lash",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
                    itemCount: images.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(images[index],),
                            fit: BoxFit.fill
                          )
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      backgroundColor: ClickColors.bodyBackground,
    );
  }
}

List<String> images = [
  'assets/images/uzmobile_cdma.webp',
  'assets/images/uzmobile_iptv.webp',
  'assets/images/beeline.webp',
  'assets/images/usell.webp',
  'assets/images/mobiuz.webp',
  'assets/images/perfectum.webp',
  'assets/images/oq.webp',
  'assets/images/humans.webp',
];
