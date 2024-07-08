import 'package:flutter/material.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({super.key});

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  bool isPinVisible = false;
  String enterPin = '';

  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        //padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF35353F),
          boxShadow: const [
            BoxShadow(offset: Offset(2.0, 2.0), color: Colors.black12, blurRadius: 10, spreadRadius: 1),
            BoxShadow(offset: Offset(2.0, 2.0), color: Colors.black12, blurRadius: 10, spreadRadius: 1),
          ],
        ),
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF252429),
            leading: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
            title: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: Text(
                    "Avtorizatsiya",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Click-Pin kiriting",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isPinVisible = !isPinVisible;
                          });
                        },
                        icon: isPinVisible
                            ? const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        )
                            : const Icon(
                          Icons.visibility_off,
                          color: Colors.white,
                        )),
                    Row(
                      children: List.generate(4, (index) {
                        return Container(
                          margin: const EdgeInsets.all(6),
                          width: isPinVisible ? 50 : 16,
                          height: isPinVisible ? 50 : 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index < enterPin.length
                                  ? isPinVisible
                                  ? const Color(0xFF0274F1)
                                  : const Color(0xFF0274F1)
                                  : const Color(0xFF252429),
                              border: Border.all(color: const Color(0xFF0274F1))),
                          child: isPinVisible && index < enterPin.length
                              ? Center(
                            child: Text(
                              enterPin[index],
                              style: const TextStyle(fontSize: 14),
                            ),
                          )
                              : null,
                        );
                      }),
                    ),
                  ],
                ),
              ),
              for (var i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) => numButton(1 + 3 * i + index)).toList(),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TextButton(onPressed: null, child: Icon(Icons.fingerprint, color: Colors.white,size: 45,)),
                    numButton(0),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (enterPin.isNotEmpty) {
                              enterPin = enterPin.substring(0, enterPin.length - 1);
                            }
                          });
                        },
                        child: const Icon(
                          Icons.backspace_outlined,
                          color: Colors.white,
                          size: 28,
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Click-Pin yoddan chiqardingizmi?",
                      style: TextStyle(fontSize: 18, color: Colors.white24),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const Text("Click Pass",style: TextStyle(fontSize: 20,color: Color(0xFF0274F1),),)),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.ads_click, size: 36,color: Color(0xFF0274F1),),
                  )
                ],
              )
            ],
          ),
          backgroundColor: const Color(0xFF252429),
        ));
  }
}
