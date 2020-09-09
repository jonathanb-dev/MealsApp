import 'package:flutter/material.dart';

// Pages
import './pages/tabs-page.dart';
import './pages/filters-page.dart';
import './pages/categories-page.dart';
import './pages//category-meals-page.dart';
import './pages/meal-detail-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => TabsPage(),
        FiltersPage.routeName: (context) => FiltersPage(),
        CategoriesPage.routeName: (context) => CategoriesPage(),
        CategoryMealsPage.routeName: (context) => CategoryMealsPage(),
        MealDetailPage.routeName: (context) => MealDetailPage(),
      },
      theme: ThemeData(
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(240, 240, 240, 1),
        fontFamily: 'Roboto',
        primarySwatch: Colors.pink,
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(30, 30, 30, 1),
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(30, 30, 30, 1),
          ),
          headline1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: 'Meals app',
    );
  }
}