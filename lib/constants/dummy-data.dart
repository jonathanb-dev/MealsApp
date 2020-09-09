import 'package:flutter/material.dart';

// Models
import '../models/category.dart';
import '../models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 1,
    name: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 2,
    name: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 3,
    name: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 4,
    name: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 5,
    name: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 6,
    name: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 7,
    name: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 8,
    name: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 9,
    name: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 10,
    name: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 1,
    categories: [
      1,
      2
    ],
    name: 'Spaghetti with Tomato Sauce',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)',
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.',
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 2,
    categories: [
      2
    ],
    name: 'Toast Hawaii',
    imageUrl: 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham (optionnal)',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C',
    ],
    duration: 10,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 3,
    categories: [
      2,
      3
    ],
    name: 'Classic Hamburger',
    imageUrl: 'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns',
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion',
    ],
    duration: 45,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
];