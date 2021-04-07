import 'package:flutter/material.dart';
import 'package:plant_shop/constants/constants.dart';
import 'package:plant_shop/models/plant_category.dart';
import 'package:plant_shop/models/plant_item.dart';
import 'package:plant_shop/models/plant_type.dart';
import 'package:plant_shop/screens/search_result.dart';
import 'package:plant_shop/widget/home_top.dart';
import 'package:plant_shop/widget/plant_horizontal_list.dart';
import 'package:plant_shop/widget/search_field.dart';
import 'package:plant_shop/widget/category_filter.dart';
import 'package:plant_shop/widget/type_horizontal_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<PlantCategory> categories = PlantCategory.getCategories();
  String selectedCategoryId = '';

  void filterCategory(String selectedId) {
    setState(() {
      selectedCategoryId = selectedId;
    });
  }

  @override
  void initState() {
    selectedCategoryId = categories[0].id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _contentContainer(
      Column(
        children: [
          HomeTop(),
          const SizedBox(height: 20),
          SearchField(
            enabled: false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchResult()),
              );
            },
          ),
          const SizedBox(height: 10),
          CategoryFilter(
            categories: categories,
            selectedCategoryId: selectedCategoryId,
            onChange: filterCategory,
          ),
          const SizedBox(height: 10),
          PlantHorizontalList(items: PlantItem.getPlants()),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: screenContentPadding,
              right: screenContentPadding,
            ),
            child: Text(
              'Popular',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 16),
          TypeHorizontalList(types: PlantType.getTypes()),
        ],
      ),
    );
  }

  Widget _contentContainer(Widget child) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.9, 1],
          colors: [Colors.white, Color.fromRGBO(245, 245, 247, 1)],
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
