import 'package:flutter/material.dart';
import 'package:plant_shop/constants/constants.dart';
import 'package:plant_shop/models/plant_type.dart';

class TypeHorizontalList extends StatelessWidget {
  TypeHorizontalList({
    required this.types,
  });

  final List<PlantType> types;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: EdgeInsets.only(left: screenContentPadding / 2),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: types.asMap().entries.map((item) {
          final bool last = (item.key + 1) == types.length;
          final PlantType type = item.value;

          return Container(
            margin: EdgeInsets.only(
              left: screenContentPadding / 2,
              right: last ? screenContentPadding : 0,
            ),
            child: GestureDetector(
              onTap: () => print('Go to ${type.name} screen'),
              child: Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 242, 240, 1),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                  child: Text(
                    type.name,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
