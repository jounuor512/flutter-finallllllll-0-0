
import 'package:delivery_food_app/providers/meal_provider.dart';
import 'package:delivery_food_app/screens/meals_details_page.dart';
import 'package:delivery_food_app/widget/buildmeal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MealPage extends StatelessWidget {
  const MealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('products',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.search,size: 32,)],
      ),

     body: GridView.builder(
      itemCount: context.read<MealProvider>().meals.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 1.2
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return detailpage(
                product:context.read<MealProvider>().meals[index],
              );
            },
            ),
            );
          },
             child:Buildmeal(
              name:context.watch<MealProvider>().meals[index].title,
              price:context.watch<MealProvider>().meals[index].price.toDouble(),
              imgurl:context.watch<MealProvider>().meals[index].imageurl,
             ) ,
        );
      },
      ),

    );
  }
}
