import 'package:delivery_food_app/models/meal_model.dart';
import 'package:flutter/material.dart';

class detailpage extends StatelessWidget {
  const detailpage({super.key, required this.product});
  final MealModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('meal details')),
      backgroundColor: Colors.pink,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: const Color.fromARGB(255, 89, 155, 4),
            child: Image.network(
              product.imageurl,
              fit: BoxFit.cover,

              errorBuilder: (context, error, stacktrace) {
                return Container(
                  height: 250,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 145, 61, 1),
                  child: Icon(Icons.image_not_supported, size: 16),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white70,
                  ),
                ),

                SizedBox(height: 12),

                Text(
                  product.description,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
