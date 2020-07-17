import 'package:TestyUDT/dummy_data.dart';
import 'package:TestyUDT/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Testy UDT'),
        ),
        body: ListView(
          children: DUMMY_CATEGORIES.map((category) => CategoryItem(
                categoryTitle: category.name,
                categoryDescription: category.description,
                iconName: category.iconName,
              )).toList(),
        ));
  }
}
