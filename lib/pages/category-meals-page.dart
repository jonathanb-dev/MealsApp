import 'package:flutter/material.dart';
import 'package:meals_app/constants/dummy-data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal-item.dart';

class CategoryMealsPage extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealsPageState createState() => _CategoryMealsPageState();
}

class _CategoryMealsPageState extends State<CategoryMealsPage> {
  int categoryId;
  String categoryName;
  List<Meal> categoryMeals;
  
  @override
  void didChangeDependencies() {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    categoryId = routeArgs['id'] as int;
    categoryName = routeArgs['name'] as String;
    categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  void _removeMeal(int mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryName recipes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: categoryMeals[index].id,
            name: categoryMeals[index].name,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
            removeItem: _removeMeal,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}