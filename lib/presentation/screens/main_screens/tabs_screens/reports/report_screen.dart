import 'package:click_uz/presentation/screens/main_screens/tabs_screens/reports/report_widget/report_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/components/colors/colors.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  bool isChecked = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Center(
            child: Text(
          "Hisobotlar",
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
        backgroundColor: ClickColors.appBarBackground,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.pie_chart_outline_rounded,
              color: Color(0xFF0274F1),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                item(isChecked, () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }, "Click bo'yicha hisobot"),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                        color: (isChecked) ? const Color(0xFF0274F1) : ClickColors.bodyBackground),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: const Center(
                          child: Text(
                        "Monitoring",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return itemReport(context);
              },
              itemCount: 15,
              physics: const BouncingScrollPhysics(),
            ),
          )
        ],
      ),
      backgroundColor: ClickColors.bodyBackground,
      floatingActionButton: InkWell(
        onTap: () {
          _scaffoldKey.currentState?.openEndDrawer();
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xFF0274F1)),
          child: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: ClickColors.bodyBackground,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _scaffoldKey.currentState?.closeEndDrawer();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                const Text(
                  "Filtr",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  width: 30,
                )
              ],
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: ClickColors.containerWidgetColor, border: Border.all(color: Colors.white24)),
              child: const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none, hintText: 'Qidiruv', hintStyle: TextStyle(color: Colors.white24)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.white24,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Karta bo'yicha",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.add,
                    color: Color(0xFF0274F1),
                    size: 35,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Sana bo'yicha",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Icon(
                    Icons.add,
                    color: Color(0xFF0274F1),
                    size: 35,
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      _scaffoldKey.currentState?.closeEndDrawer();
                    },
                    child: const Text(
                      "Yopish",
                      style: TextStyle(color: Colors.white12, fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF0274F1)),
                    child: const Center(
                      child: Text(
                        "Qo'llash",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
