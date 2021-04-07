import 'package:flutter/material.dart';
import 'package:plant_shop/widget/main_screens_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant shop',
      debugShowCheckedModeBanner: false,
      home: MainScreensContainer(),
    );
  }
}
