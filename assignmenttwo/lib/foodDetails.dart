import 'package:flutter/material.dart';

class FoodItem {
  final String name;
  final double rating;
  final String category;
  final int price;
  final String imagePath;

  FoodItem(this.name, this.rating, this.category, this.price, this.imagePath);
}

class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;

  FoodDetailsPage({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodItem.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(foodItem.imagePath),
            Text('Category: ${foodItem.category}'),
            Text('Price: ${foodItem.price} LKR'),
            Text('Rating: ${foodItem.rating} ★'),
          ],
        ),
      ),
    );
  }
}
