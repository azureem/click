import 'package:click_uz/presentation/screens/auth/otp/otp_screen.dart';
import 'package:click_uz/presentation/screens/auth/sign_up/register/register_screen.dart';
import 'package:click_uz/presentation/screens/bottom_navigation/bottom.dart';
import 'package:click_uz/presentation/screens/main_screens/card_screens/add_card_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/card_screens/card_category_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/payment/payment_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/payment/payment_type_screens/mobile_operator_screen/mobile_operator_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/reports/report_screen.dart';
import 'package:click_uz/presentation/screens/pin_code/pin_code_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/cash_back_screen/cashback_screen.dart';
import 'package:click_uz/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Color(0xff252429), statusBarIconBrightness: Brightness.light));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const SplashScreen(),
    );
  }
}

