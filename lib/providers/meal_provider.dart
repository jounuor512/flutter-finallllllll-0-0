
import 'package:delivery_food_app/models/meal_model.dart';
import 'package:flutter/material.dart';

class MealProvider extends ChangeNotifier{
  List<MealModel>meals=[

MealModel(
  title: 'Grilled Chicken', 
  price: 120, 
  description: 'Deliciious grilled chicken with spices',
   imageurl: 'assets/first.png',
   ),

MealModel(
  title: 'Beef Burger', 
  price: 90, 
  description: 'Juicy beef burger with cheese',
   imageurl: 'assets/secound.png',
   ),

  ];
}