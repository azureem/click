import 'package:click_uz/presentation/screens/main_screens/tabs_screens/reports/report_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/services_screen_bloc.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/transfer/transfer_screen.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main_screens/tabs_screens/main/main_screen.dart';
import '../main_screens/tabs_screens/payment/payment_screen.dart';
import '../main_screens/tabs_screens/services/service_screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _Bottom();
}

class _Bottom extends State<Bottom> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const MainScreen(),
    const PaymentScreen(),
    const TransferScreen(),
    const ReportScreen(),
    BlocProvider(
      create: (context) => ServicesScreenBloc(),
      child: ServiceScreen(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClickColors.background,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ClickColors.background,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        //selectedItemColor: Color(0xffffba08),
        selectedItemColor: ClickColors.darkerBlue,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/circle_logo.png',
              width: 24.0,
              height: 24.0,
            ),
            label: 'Asosiy',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "To'lov",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.arrow_right_alt_rounded),
            label: "O'tqazmalar",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_rounded),
            label: 'Hisobotlar',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Xizmatlar',
          ),
        ],
      ),
    );
  }
}
