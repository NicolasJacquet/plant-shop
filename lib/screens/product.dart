import 'package:flutter/material.dart';
import 'package:plant_shop/constants/constants.dart';
import 'package:plant_shop/models/plant_item.dart';
import 'package:plant_shop/widget/custom_back_button.dart';

class Product extends StatelessWidget {
  Product(this.plant);

  final PlantItem plant;

  @override
  Widget build(BuildContext context) {
    final Color mainBgColor = Color.fromRGBO(231, 231, 231, 1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainBgColor,
        elevation: 0,
        actions: [_favoriteIcon()],
        leading: CustomBackButton(),
      ),
      body: Container(
        color: mainBgColor,
        child: Column(
          children: [
            _imageContent(),
            _bottomContent(context),
          ],
        ),
      ),
    );
  }

  Widget _favoriteIcon() {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Center(
        child: GestureDetector(
          child: ClipOval(
            child: Container(
              height: 40,
              width: 40,
              color: Color.fromRGBO(233, 95, 95, 1),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
          onTap: () => print('Add to favorite'),
        ),
      ),
    );
  }

  Widget _imageContent() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          left: screenContentPadding,
          right: screenContentPadding,
          bottom: 35,
          top: 15,
        ),
        child: Hero(
          tag: 'plant-image-${plant.id}',
          child: Image.asset(
            'assets/pictures/plants/${plant.picture}',
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _bottomContent(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            _titleAndPrice(),
            const SizedBox(height: 14),
            _plantDescription(),
            const SizedBox(height: 14),
            _addToCartButton(context),
          ],
        ),
      ),
      padding: EdgeInsets.only(
        top: screenContentPadding,
        left: screenContentPadding,
        right: screenContentPadding,
      ),
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    );
  }

  Widget _titleAndPrice() {
    return Row(
      children: [
        Expanded(
          child: Text(
            plant.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
              color: Color.fromRGBO(24, 24, 24, 1),
            ),
          ),
        ),
        Text(
          '${plant.price.toString()}€',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Color.fromRGBO(24, 24, 24, 1),
          ),
        ),
      ],
    );
  }

  Widget _plantDescription() {
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          plant.description,
          style: TextStyle(
            color: Color.fromRGBO(136, 136, 136, 1),
            fontSize: 13,
            height: 1.8,
          ),
        ),
      ),
    );
  }

  Widget _addToCartButton(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(57, 57, 57, 1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            const SizedBox(width: 18),
            Text(
              'Add to cart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
