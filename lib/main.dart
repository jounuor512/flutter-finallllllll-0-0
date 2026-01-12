import 'package:delivery_food_app/providers/meal_provider.dart';
import 'package:delivery_food_app/screens/Registration_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) {
        return MealProvider();
      },
      child: const app(),
    ),
  );
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationPage(),
    );
  }
}
