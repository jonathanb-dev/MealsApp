import 'package:flutter/material.dart';

// Pages
import '../pages/category-meals-page.dart';

// Models
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealsPage.routeName,
      arguments: {
        'id': category.id,
        'name': category.name,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              category.color.withOpacity(0.6),
              category.color,
            ],
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Text(
          category.name,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      onTap: () => _selectCategory(context),
    );
  }
}