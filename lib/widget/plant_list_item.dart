import 'package:flutter/material.dart';
import 'package:plant_shop/constants/constants.dart';
import 'package:plant_shop/models/plant_item.dart';
import 'package:plant_shop/screens/product.dart';

class PlantListItem extends StatelessWidget {
  PlantListItem({
    this.last = false,
    required this.plant,
  });

  final bool last;
  final PlantItem plant;

  void _openProductDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Product(plant)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: screenContentPadding,
        right: last ? screenContentPadding : 0,
      ),
      child: Stack(
        children: [
          _coloredBackground(),
          GestureDetector(
            onTap: () => _openProductDetails(context),
            child: Container(
              height: plantListHeightBig,
              width: 142,
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _productImage(),
                  const SizedBox(height: 14),
                  _productName(),
                  const SizedBox(height: 12),
                  _typeAndPrice(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _typeAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          plant.category,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Color.fromRGBO(160, 160, 159, 1),
          ),
        ),
        Text(
          '${plant.price.toString()}€',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 13,
            color: Color.fromRGBO(94, 84, 81, 1),
          ),
        ),
      ],
    );
  }

  Widget _productName() {
    return Text(
      plant.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Color.fromRGBO(24, 24, 24, 1),
        decoration: TextDecoration.none,
      ),
    );
  }

  Widget _productImage() {
    return Container(
      height: 200,
      child: Hero(
        tag: 'plant-image-${plant.id}',
        child: Image.asset(
          'assets/pictures/plants/${plant.picture}',
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _coloredBackground() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(242, 242, 240, 1),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }
}
