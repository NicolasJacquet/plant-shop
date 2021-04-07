import 'package:flutter/material.dart';
import 'package:plant_shop/constants/constants.dart';
import 'package:plant_shop/models/plant_category.dart';

class CategoryFilter extends StatelessWidget {
  CategoryFilter({
    required this.selectedCategoryId,
    required this.onChange,
    required this.categories,
  });

  final String selectedCategoryId;
  final void Function(String) onChange;
  final List<PlantCategory> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: screenContentPadding),
      width: double.infinity,
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map((PlantCategory category) => _filterButton(category))
            .toList(),
      ),
    );
  }

  Widget _filterButton(PlantCategory category) {
    final TextStyle activeStyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 13,
    );
    final TextStyle inactiveStyle = TextStyle(
      color: Colors.grey,
      fontSize: 13,
    );

    return GestureDetector(
      onTap: () => onChange(category.id),
      child: Container(
        margin: EdgeInsets.only(right: 22),
        padding: EdgeInsets.only(left: 6, right: 6),
        child: Center(
          child: Text(
            category.label,
            style:
                selectedCategoryId == category.id ? activeStyle : inactiveStyle,
          ),
        ),
      ),
    );
  }
}
