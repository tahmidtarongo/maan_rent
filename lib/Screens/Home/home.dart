import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maan_rent/Screens/Home/home_screen.dart';
import 'package:maan_rent/Screens/Payments/payment_screen.dart';
import 'package:maan_rent/Screens/Properties/empty_properties.dart';
import 'package:maan_rent/Screens/Tenants/empty_tenants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    EmptyProperties(),
    EmptyTenants(),
    PaymentScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.dashboard_customize),
            title: const Text("Dashboard"),
            selectedColor: kMainColor,
            unselectedColor: kGreyTextColor,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.home),
            title: const Text("Properties"),
            selectedColor: kMainColor,
            unselectedColor: kGreyTextColor,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(FontAwesomeIcons.users),
            title: const Text("Tenants"),
            selectedColor: kMainColor,
            unselectedColor: kGreyTextColor,
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.account_balance_wallet_rounded,
            ),
            title: const Text("Payment"),
            selectedColor: kMainColor,
            unselectedColor: kGreyTextColor,
          ),
        ],
      ),
    );
  }
}
