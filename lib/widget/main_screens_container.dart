import 'package:flutter/material.dart';
import 'package:plant_shop/models/screen_item.dart';
import 'package:plant_shop/screens/account.dart';
import 'package:plant_shop/screens/cart.dart';
import 'package:plant_shop/screens/grid.dart';
import 'package:plant_shop/screens/home.dart';
import 'package:plant_shop/widget/bottom_menu_navigator.dart';

class MainScreensContainer extends StatefulWidget {
  @override
  _MainScreensContainerState createState() => _MainScreensContainerState();
}

class _MainScreensContainerState extends State<MainScreensContainer> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<ScreenItem> _screens = <ScreenItem>[
    ScreenItem(
      navIcon: Icons.home_outlined,
      screenContent: Home(),
    ),
    ScreenItem(
      navIcon: Icons.grid_view,
      screenContent: Grid(),
    ),
    ScreenItem(
      navIcon: Icons.shopping_cart_outlined,
      screenContent: Cart(),
    ),
    ScreenItem(
      navIcon: Icons.person_outlined,
      screenContent: Account(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: _screens[_selectedIndex].screenContent,
      ),
      bottomNavigationBar: BottomMenuNavigator(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        items: _screens,
      ),
    );
  }
}
