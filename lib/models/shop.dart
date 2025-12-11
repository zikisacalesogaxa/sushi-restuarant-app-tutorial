import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Nigiri",
      price: "18.00",
      imagePath: "lib/images/nigiri.png",
      rating: "4.9",
    ),
    Food(
      name: "Sashimi",
      price: "20.00",
      imagePath: "lib/images/sashimi.png",
      rating: "5.0",
    ),
    Food(
      name: "Sushi Eggs",
      price: "21.00",
      imagePath: "lib/images/sushi_eggs.png",
      rating: "2.9",
    ),
    Food(
      name: "Temaki",
      price: "30.00",
      imagePath: "lib/images/temaki.png",
      rating: "4.9",
    ),
  ];

  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
