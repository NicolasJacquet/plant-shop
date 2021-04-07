import 'package:flutter/material.dart';
import 'package:plant_shop/constants/constants.dart';
import 'package:plant_shop/models/plant_item.dart';
import 'package:plant_shop/widget/plant_list_item.dart';

class PlantHorizontalList extends StatelessWidget {
  PlantHorizontalList({
    required this.items,
  });

  final List<PlantItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: plantListHeightBig,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: items.asMap().entries.map((item) {
          return PlantListItem(
            last: (item.key + 1) == items.length,
            plant: item.value,
          );
        }).toList(),
      ),
    );
  }
}
