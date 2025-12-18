import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text('My Cart'),
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Food foodItem = value.cart[index];

                  final String foodName = foodItem.name;
                  final String foodPrice = foodItem.price;

                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '\$ $foodPrice',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.grey[300]),
                        onPressed: () => removeFromCart(foodItem, context),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Button(text: "Pay Now", onTap: () {}, enabled: true),
            ),
          ],
        ),
      ),
    );
  }
}
