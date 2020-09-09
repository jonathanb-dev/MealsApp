import 'package:flutter/material.dart';

// Constants
import '../constants/dummy-data.dart';

// Models
import '../models/meal.dart';

class MealDetailPage extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final int mealId = ModalRoute.of(context).settings.arguments as int;
    final Meal selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    Widget _buildSectionName(BuildContext context, String text) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline1,
        ),
      );
    }

    Widget _buildContainer(Widget child) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 150,
        padding: const EdgeInsets.all(10),
        width: 300,
        child: child,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.name}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _buildSectionName(
              context, 'Ingredients',
            ),
            _buildContainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                  );
                },
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            _buildSectionName(
              context, 'Steps',
            ),
            _buildContainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('#${index + 1}'),
                        ),
                        title: Text(selectedMeal.steps[index]),
                      ),
                      Divider(),
                    ],
                  );
                },
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
      ),
    );
  }
}