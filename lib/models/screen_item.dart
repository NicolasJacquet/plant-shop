import 'package:flutter/material.dart';

class ScreenItem {
  ScreenItem({
    required this.navIcon,
    required this.screenContent,
  });

  final IconData navIcon;
  final Widget screenContent;
}
