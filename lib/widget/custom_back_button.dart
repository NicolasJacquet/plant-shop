import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(Icons.arrow_back, color: Color.fromRGBO(5, 5, 5, 1)),
      onTap: () => Navigator.pop(context),
    );
  }
}
