import 'package:flutter/material.dart';

import '../../../../../utils/components/colors/colors.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {

  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isChecked=!isChecked;
                        });
                      },
                      child: Center(
                          child: Text(
                        "Click bo'yicha hisobot",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)), color: (!isChecked)?Color(0xFF0274F1):ClickColors.bodyBackground),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isChecked=!isChecked;
                        });
                      },
                      child: Center(
                          child: Text(
                        "Monitoring",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)), color:(isChecked)? Color(0xFF0274F1):ClickColors.bodyBackground),
                  ),
                  flex: 1,
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: ClickColors.bodyBackground,
    );
  }
}
