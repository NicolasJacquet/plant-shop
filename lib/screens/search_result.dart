import 'package:flutter/material.dart';
import 'package:plant_shop/widget/custom_back_button.dart';
import 'package:plant_shop/widget/search_field.dart';

class SearchResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CustomBackButton(),
        title: Text(
          'Search',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: SearchField(autofocus: true),
              color: Colors.white,
              padding: EdgeInsets.only(top: 10, bottom: 20),
            ),
            _resultList(),
          ],
        ),
      ),
    );
  }

  Widget _resultList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (_, __) => Container(),
        itemCount: 1,
      ),
    );
  }
}
