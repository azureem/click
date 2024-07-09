import 'package:click_uz/presentation/screens/tabs_screens/main/main_screen.dart';
import 'package:click_uz/presentation/screens/tabs_screens/payment/payment_screen.dart';
import 'package:click_uz/presentation/screens/tabs_screens/reports/report_screen.dart';
import 'package:click_uz/presentation/screens/tabs_screens/services/service_screen.dart';
import 'package:click_uz/presentation/screens/tabs_screens/transfer/transfer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    const ServiceScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        //selectedItemColor: Color(0xffffba08),
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items:  [
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('assets/images/svg/main_logo.svg',
              width: 24.0, height: 24.0, color: Colors.blue,),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_sharp),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}