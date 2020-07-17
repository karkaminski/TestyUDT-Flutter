import 'package:TestyUDT/screens/category_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  final String categoryTitle;
  final String categoryDescription;
  final String iconName;

  CategoryItem({this.categoryTitle, this.categoryDescription, this.iconName});

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(CategoryDetailsScreen.routeName, arguments: {
      'title': categoryTitle,
      'description': categoryDescription,
      'iconName': iconName,
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        child: Card(
          elevation: 10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/$iconName',
                  color: Theme.of(context).accentColor,
                  width: mediaQuery.size.width * 0.20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: mediaQuery.size.width * 0.75 - 40,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        categoryDescription,
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
