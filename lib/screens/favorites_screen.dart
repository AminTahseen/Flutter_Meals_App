import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favoriteMeals;

  FavoritesScreen(this._favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoriteMeals.isEmpty) {
      return Center(
        child: Text('You Do Not Have Any Favorites Yet.'),
      );
    } else {
      return Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              elevation: 10,
              child: MealItem(
                id: _favoriteMeals[index].id,
                title: _favoriteMeals[index].title,
                imageUrl: _favoriteMeals[index].imageUrl,
                affordability: _favoriteMeals[index].affordability,
                complexity: _favoriteMeals[index].complexity,
                duration: _favoriteMeals[index].duration,
              ),
            );
          },
          itemCount: _favoriteMeals.length,
        ),
      );
    }
  }
}
