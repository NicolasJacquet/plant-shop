import 'package:flutter/material.dart';
import 'package:plant_shop/models/screen_item.dart';

const double _bottomAppNavigationHeight = 40;
const double _bottomAppNavigationPadding = 14;

class BottomMenuNavigator extends StatelessWidget {
  BottomMenuNavigator({
    required this.selectedIndex,
    required this.onItemTapped,
    required this.items,
  });

  final int selectedIndex;
  final void Function(int) onItemTapped;
  final List<ScreenItem> items;

  final Color selectedItemColor = Color.fromRGBO(60, 60, 60, 1);
  final Color unSelectedItemColor = Color.fromRGBO(161, 161, 161, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Container(
          height: _bottomAppNavigationHeight + _bottomAppNavigationPadding,
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: items.asMap().entries.map((item) {
              return GestureDetector(
                onTap: () => onItemTapped(item.key),
                child: ClipRect(
                  child: Container(
                    height: _bottomAppNavigationHeight,
                    width: _bottomAppNavigationHeight,
                    child: Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.fastOutSlowIn,
                            bottom: selectedIndex == item.key ? -5 : -30,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                  color: selectedItemColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            item.value.navIcon,
                            color: selectedIndex == item.key
                                ? selectedItemColor
                                : unSelectedItemColor,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
