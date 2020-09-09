import 'package:flutter/material.dart';

// Constants
import '../constants/dummy-data.dart';

// Widgets
import '../widgets/category-item.dart';

class CategoriesPage extends StatelessWidget {
  static const routeName = '/categories';
  
  List<Widget> getCategoryItems() {
    return DUMMY_CATEGORIES.map((category) => CategoryItem(category)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200,
      ),
      padding: const EdgeInsets.all(10),
      children: [
        ...getCategoryItems(),
      ],
    );
  }
}